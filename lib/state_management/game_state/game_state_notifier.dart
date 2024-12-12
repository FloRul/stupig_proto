import 'dart:convert';
import 'dart:math';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stupig_proto/models/models.dart';
import 'package:stupig_proto/state_management/click_stream/click_handling.dart';
import 'package:stupig_proto/state_management/game_state/game_state.dart';
import 'package:stupig_proto/utils/constants.dart';
part 'game_state_notifier.g.dart';

@Riverpod(keepAlive: true)
class GameStateNotifier extends _$GameStateNotifier {
  @override
  Future<GameState> build() async {
    SharedPreferencesAsync prefs = SharedPreferencesAsync();

    final existingSave = await prefs.getString(kGameStateKey);
    ref.listen(clickStreamProvider, (previous, next) {
      _handleClick();
    });

    if (existingSave == null) {
      return GameState.newGame();
    }

    return prefs.getString(kGameStateKey).then((value) {
      if (value != null) {
        return GameState.fromJson(jsonDecode(value));
      } else {
        throw Exception('Game state data corrupted.');
      }
    }, onError: (e) => throw Exception('An error occurred while loading the game state: $e'));
  }

  Future<void> save() async {
    SharedPreferencesAsync prefs = SharedPreferencesAsync();
    await prefs.setString(kGameStateKey, jsonEncode(state.value!.toJson()));
  }

  void _handleClick() {
    // Get the current state and projects
    var currentState = state.value!;
    var projects = List<Project>.from(currentState.projects);

    // Update the progress of projects that are in progress
    _updateProgressOfInProgressProjects(projects);

    // Identify projects that are now completed
    var newCompletedProjects = _getNewlyCompletedProjects(projects);

    var updatedXp = currentState.xp;
    var updatedMoney = currentState.money;

    if (newCompletedProjects.isNotEmpty) {
      // Calculate total rewards from completed projects
      _applyRewardsFromCompletedProjects(newCompletedProjects, updatedXp, updatedMoney);

      // Update the status of completed projects in the projects list
      projects = _updateStatusOfCompletedProjects(projects);
    }

    // Update the state with all changes at once
    state = AsyncValue.data(currentState.copyWith(
      projects: projects,
      xp: updatedXp,
      money: updatedMoney,
    ));
  }

  void _updateProgressOfInProgressProjects(List<Project> projects) {
    for (int i = 0; i < projects.length; i++) {
      if (projects[i].status == ProjectStatus.inProgress) {
        projects[i] = projects[i].copyWith(
          progress: min(1, projects[i].progress + state.value!.cpuSpeed / kClickPowerDenominator),
        );
      }
    }
  }

  List<Project> _getNewlyCompletedProjects(List<Project> projects) {
    return projects.where((p) => p.progress >= 1 && p.status == ProjectStatus.inProgress).toList();
  }

  void _applyRewardsFromCompletedProjects(List<Project> newCompletedProjects, double updatedXp, double updatedMoney) {
    for (var project in newCompletedProjects) {
      updatedXp += project.reward.xp;
      updatedMoney += (project.reward.money ?? 0);
    }
  }

  List<Project> _updateStatusOfCompletedProjects(List<Project> projects) {
    return projects.map((p) {
      if (p.status == ProjectStatus.inProgress && p.progress >= 1) {
        return p.copyWith(status: ProjectStatus.completed);
      }
      return p;
    }).toList();
  }

  void startProject(Project project) {
    var projects = List<Project>.from(state.value!.projects);

    final index = projects.indexWhere((p) => p.hashCode == project.hashCode);
    if (index != -1) {
      projects[index] = projects[index].copyWith(status: ProjectStatus.inProgress);
    }

    state = AsyncValue.data(state.value!.copyWith(projects: projects));
  }
}
