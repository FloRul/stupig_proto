import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stupig_proto/state_management/game_state/game_state.dart';
import 'package:stupig_proto/utils/constants.dart';
part 'game_state_notifier.g.dart';



@Riverpod(keepAlive: true)
class GameStateNotifier extends _$GameStateNotifier {
  @override
  Future<GameState> build() async {
    SharedPreferencesAsync prefs = SharedPreferencesAsync();
    return prefs.getString(kGameStateKey).then((value) {
      if (value != null) {
        return GameState.fromJson(jsonDecode(value));
      } else {
        throw Exception('No game state found');
      }
    }, onError: (e) => throw Exception('An error occurred while loading the game state: $e'));
  }

  Future<void> save() async {
    SharedPreferencesAsync prefs = SharedPreferencesAsync();
    await prefs.setString(kGameStateKey, jsonEncode(state.value!.toJson()));
  }
}
