import 'dart:math';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stupig_proto/systems/global_ticker.dart/global_ticker.dart';
import 'package:stupig_proto/systems/event_bus.dart';
import 'package:stupig_proto/systems/game_event.dart';
import 'package:stupig_proto/systems/primary_resources/notifiers.dart';
import 'package:stupig_proto/systems/projects/models.dart';
import 'package:stupig_proto/systems/projects/project_state.dart';
import 'package:uuid/uuid.dart';

part 'notifiers.g.dart';

@Riverpod(keepAlive: true)
class ActiveProjectsNotifier extends _$ActiveProjectsNotifier {
  @override
  List<ProjectState> build() {
    ref.listen(
      eventBusProvider,
      (previous, next) {
        next.whenData(
          (event) => event.maybeMap(
            projectStarted: (e) => _handleStartProject(e.project),
            projectCompleted: (e) => _handleCompletedProject(e.project),
            orElse: () {},
          ),
        );
      },
    );
    ref.listen(
      globalTickerProvider,
      (previous, next) => _handleTick(),
    );
    return [];
  }

  void _handleStartProject(Project project) {
    state = [
      ...state,
      ProjectState.activeFromProject(
        project,
        Random().nextInt(2),
      )
    ];
  }

  void _handleTick() {
    state = [
      for (var p in state)
        p.copyWith(
          completion: p.completion.tick(),
        ),
    ];
  }

  void _handleCompletedProject(Project project) {
    ref.read(eventBusProvider.notifier).publish(GameEvent.moneyEarned(amount: project.reward.moneyAmount));
    ref.read(eventBusProvider.notifier).publish(GameEvent.xpEarned(amount: project.reward.xpAmount));

    state = [
      for (var p in state)
        if (p.project.id != project.id) p,
    ];
  }
}

@Riverpod(keepAlive: true)
class AvailableProjectsNotifier extends _$AvailableProjectsNotifier {
  // Store future projects that are being fetched
  final _pendingProjects = <String, Future<Project>>{};

  @override
  AvailableProjectsState build() {
    ref.listen(
      eventBusProvider,
      (previous, next) {
        next.whenData(
          (event) => event.maybeMap(
            projectStarted: (pStarted) => _handleStartProject(pStarted.project),
            purchase: (e) => e.type == PurchaseType.availableSlot ? _addNewSlot() : null,
            orElse: () {},
          ),
        );
      },
    );

    ref.listen(
      globalTickerProvider,
      (previous, next) => _handleTick(),
    );

    return AvailableProjectsState(
      projects: [
        Project(
          id: const Uuid().v4(),
          name: 'Project 1',
          description: 'Project 1 Description',
          reward: const ProjectReward(
            moneyAmount: 1,
            xpAmount: 1,
          ),
        ),
      ],
      cooldowns: {},
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
        _pendingProjects[entry.key] = _fetchNewProject();
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
        project.id: Completion.initial(1),
      },
    );
  }

  Future<void> _addCompletedProject(String projectId) async {
    try {
      // If we have a pending project, use it
      if (_pendingProjects.containsKey(projectId)) {
        final newProject = await _pendingProjects[projectId]!;
        _pendingProjects.remove(projectId);

        state = state.copyWith(
          projects: [...state.projects, newProject],
        );
      } else {
        // Fallback in case we somehow don't have a pending project
        final newProject = await _fetchNewProject();
        state = state.copyWith(
          projects: [...state.projects, newProject],
        );
      }
    } catch (e) {
      print('Error adding completed project: $e');
      // Clean up pending project if there was an error
      _pendingProjects.remove(projectId);
    }
  }

  Future<Project> _fetchNewProject() async {
    await Future.delayed(const Duration(seconds: 1));
    // TODO: Replace with actual API call
    var id = Random().nextInt(100000).toString();
    return Project(
      id: const Uuid().v4(),
      name: 'Project $id',
      description: 'Project $id Description',
      reward: ProjectReward(
        moneyAmount: 1,
        xpAmount: 1 + ref.read(experienceNotifierProvider).level * Random().nextInt(10),
      ),
    );
  }

  void modifyCooldownRate(String projectId, double multiplier) {
    if (!state.cooldowns.containsKey(projectId)) return;

    final cooldown = state.cooldowns[projectId]!;
    state = state.copyWith(
      cooldowns: {
        ...state.cooldowns,
        projectId: cooldown.copyWith(
          multipliers: [...cooldown.multipliers, multiplier],
        ),
      },
    );
  }

  Future<void> _addNewSlot() async {
    try {
      final newProject = await _fetchNewProject();
      state = state.copyWith(
        projects: [...state.projects, newProject],
      );
    } catch (e) {
      print('Error adding new project slot: $e');
      // Optionally show an error message to the user
    }
  }
}
