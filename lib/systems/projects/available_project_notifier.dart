import 'dart:convert';
import 'dart:math';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stupig_proto/systems/game_event.dart';
import 'package:stupig_proto/systems/global_ticker.dart/global_ticker.dart';
import 'package:stupig_proto/systems/event_bus.dart';
import 'package:stupig_proto/systems/projects/models.dart';
import 'package:stupig_proto/systems/secondary_resources/models.dart';
import 'package:stupig_proto/systems/secondary_resources/notifiers.dart';

part 'available_project_notifier.g.dart';

@Riverpod(keepAlive: true)
Future<List<Project>> initialProjects(Ref ref) async {
  final futures = List.generate(3, (index) => _fetchNewProject(ref));
  return Future.wait(futures);
}

Future<Project> _fetchNewProject(Ref ref) async {
  final jsonString = await rootBundle.loadString('data/projects.json');
  final projectType = ProjectType.values[Random().nextInt(ProjectType.values.length)];
  final Map<String, dynamic> jsonData = json.decode(jsonString);
  final List<dynamic> projectData = jsonData[projectType.name];

  final randomIndex = Random().nextInt(projectData.length);

  return Project.fromNameDescType(
    name: projectData[randomIndex]['name'],
    description: projectData[randomIndex]['description'],
    type: projectType,
    techSkillslevelL: ref.read(secResourcesProvider)[ResourceType.techSkills]!.value.toInt(),
  );
}

@Riverpod(keepAlive: true)
class AvailableProjectsNotifier extends _$AvailableProjectsNotifier {
  final _pendingProjects = <String, Future<Project>>{};

  @override
  AvailableProjectsState build() {
    ref.listen(
      eventBusProvider,
      (previous, next) {
        next.whenData(
          (event) => event.maybeMap(
            projectStarted: (e) => _handleStartProject(e.project),
            purchase: (e) {
              if (e is ResourceUpgrade) {
                if (e.type.type == ResourceType.focusPoints) _addNewSlot();
              }
            },
            orElse: () {},
          ),
        );
      },
    );

    ref.listen(
      globalTickerProvider,
      (previous, next) => _handleTick(),
    );

    // Start with empty state, will be populated when initial projects are loaded
    return AvailableProjectsState(
      projects: ref.watch(initialProjectsProvider).value!,
      cooldowns: {},
      availableDecline: 3,
    );
  }

  void _handleTick() {
    if (state.cooldowns.isEmpty) return;

    final newCooldowns = Map<String, Completion>.from(state.cooldowns);
    var completedCooldowns = <String>[];

    // Update each cooldown
    for (var entry in newCooldowns.entries) {
      final tickedCompletion = entry.value.tick();

      // Start fetching when we're at 75% completion if we haven't started yet
      if (tickedCompletion.progress >= 0.75 && !_pendingProjects.containsKey(entry.key)) {
        _pendingProjects[entry.key] = _fetchNewProject(ref);
      }

      if (tickedCompletion.isComplete) {
        completedCooldowns.add(entry.key);
      } else {
        newCooldowns[entry.key] = tickedCompletion;
      }
    }

    // Handle completed cooldowns
    for (var projectId in completedCooldowns) {
      newCooldowns.remove(projectId);
      _addCompletedProject(projectId);
    }

    if (newCooldowns != state.cooldowns) {
      state = state.copyWith(cooldowns: newCooldowns);
    }
  }

  Future<void> _handleStartProject(Project project) async {
    state = state.copyWith(
      projects: [
        for (var p in state.projects)
          if (p.id != project.id) p,
      ],
      cooldowns: {
        ...state.cooldowns,
        project.id: Completion.initial(ref.read(secResourcesProvider)[ResourceType.hardwarePower]!.value * 2),
      },
    );
  }

  Future<void> _addCompletedProject(String projectId) async {
    try {
      // Get the index based on the cooldowns map order
      final index = state.cooldowns.keys.toList().indexOf(projectId);

      if (_pendingProjects.containsKey(projectId)) {
        final newProject = await _pendingProjects[projectId]!;
        _pendingProjects.remove(projectId);

        final updatedProjects = List<Project>.from(state.projects);
        updatedProjects.insert(index, newProject);

        state = state.copyWith(projects: updatedProjects);
      } else {
        // Fallback case
        final newProject = await _fetchNewProject(ref);
        final updatedProjects = List<Project>.from(state.projects);
        updatedProjects.insert(index, newProject);

        state = state.copyWith(projects: updatedProjects);
      }
    } catch (e) {
      print('Error adding completed project: \$e');
      _pendingProjects.remove(projectId);
    }
  }

  Future<void> _addNewSlot() async {
    try {
      final newProject = await _fetchNewProject(ref);
      state = state.copyWith(
        projects: [...state.projects, newProject],
      );
    } catch (e) {
      print('Error adding new project slot: $e');
      // Optionally show an error message to the user
    }
  }

  /// Declines a project and replaces it with a new one
  Future<void> declineProject(Project project) async {
    state = state.copyWith(
      projects: [
        for (var p in state.projects)
          if (p.id != project.id) p,
      ],
      cooldowns: {
        ...state.cooldowns,
        project.id: Completion.initial(1),
      },
      // TODO: implement the decline management mechanic
      availableDecline: state.availableDecline - 1,
    );
  }
}
