import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stupig_proto/models/models.dart';
import 'package:stupig_proto/state_management/game_state/game_state.dart';
import 'package:stupig_proto/utils/constants.dart';
part 'game_state_notifier.g.dart';

@Riverpod(keepAlive: true)
class GameStateNotifier extends _$GameStateNotifier {
  @override
  Future<GameState> build() async {
    SharedPreferencesAsync prefs = SharedPreferencesAsync();

    final existingSave = await prefs.getString(kGameStateKey);

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

  void startProject(Project project) {
    var projects = List<Project>.from(state.value!.projects);

    final index = projects.indexWhere((p) => p.hashCode == project.hashCode);
    if (index != -1) {
      projects[index] = projects[index].copyWith(status: ProjectStatus.inProgress);
    }

    state = AsyncValue.data(state.value!.copyWith(projects: projects));
  }
}
