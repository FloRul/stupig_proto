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
      handleClick();
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

  Future<void> handleClick() async {
    // Update the progress
    var projects = List<Project>.from(state.value!.projects);
    for (int i = 0; i < projects.length; i++) {
      if (projects[i].status == ProjectStatus.inProgress) {
        projects[i] = projects[i]
            .copyWith(progress: min(1, projects[i].progress + state.value!.cpuSpeed / kClickPowerDenominator));
      }
    }
    if (projects.any((p) => p.progress >= 1 && p.status == ProjectStatus.inProgress)) {
      // save();
      projects = projects
          .map((p) => p.status == ProjectStatus.inProgress ? p.copyWith(status: ProjectStatus.completed) : p)
          .toList();
    }
    state = AsyncValue.data(state.value!.copyWith(projects: projects));
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
