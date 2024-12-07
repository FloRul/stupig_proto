import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stupig_proto/models/models.dart';
import 'package:stupig_proto/utils/constants.dart';
part 'game_state.freezed.dart';
part 'game_state.g.dart';

@freezed
class GameState with _$GameState {
  const GameState._();
  const factory GameState({
    required double xp,
    required int level,
    required double money,
    // Determines the complexity of projects you can handle ie. bigger prereq. but bigger rewards
    // Better CPU = Access to more advanced projects
    required double cpuPower,
    // Enables auto clicking - auto clicking efficiency
    // Affects the "thinking speed" (passive completion rate)
    required double gpuVram,
    // Determines how many projects can be active simultaneously
    required double ram,
    // Affects the base clicking efficiency
    required double cpuSpeed,
    required List<ActiveProject> activeProjects,
    required List<InactiveProject> inactiveProjects,
  }) = _GameState;

  factory GameState.fromJson(Map<String, Object?> json) => _$GameStateFromJson(json);

  double get clickPower => cpuSpeed;
  double get availableRam => activeProjects.fold(0, (p, e) => p + e.ram);
  double get xpToNextLevel => kBaseXp * pow(level, kLevelUpFactor);

  bool satisfyPrereq(Prerequisite pq) => cpuPower >= pq.cpuPower && availableRam >= pq.ram;
}
