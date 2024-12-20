﻿import 'dart:math';

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
    required List<Project> projects,
  }) = _GameState;

  factory GameState.fromJson(Map<String, Object?> json) => _$GameStateFromJson(json);

  factory GameState.newGame() {
    return const GameState(
      xp: 0,
      level: 1,
      money: 0,
      cpuPower: 1,
      gpuVram: 1,
      ram: 1,
      cpuSpeed: 1,
      projects: [
        Project(
          name: "Hello, World!",
          description:
              """Your first programming assignment is a simple console application that prints 'Hello, World!'. Unbeknownst to your professor, you secretly optimize the code with a few extra lines that give your program just a hint of... sentience. As the words "Hello, World!" blink on the screen, you could swear the cursor winks back at you with an almost mischievous intelligence.""",
          ram: 1,
          progress: 0,
          reward: Reward(xp: 1),
          theme: Theme.programmingFundamentals,
          subtheme: "",
          prerequisite: Prerequisite(cpuPower: 1, ram: 1),
          status: ProjectStatus.notStarted,
          rarity: Rarity.common,
        ),
        Project(
          name: "Todo List",
          description:
              """Your digital battlefield where tasks tremble in fear, waiting to be heroically checked off or dramatically procrastinated, turning life's mundane missions into a glorious quest of personal productivity and semi-organized chaos.""",
          ram: 1,
          reward: Reward(xp: 1, money: 5),
          progress: 0,
          theme: Theme.programmingFundamentals,
          subtheme: "",
          prerequisite: Prerequisite(cpuPower: 1, ram: 1),
          status: ProjectStatus.notStarted,
          rarity: Rarity.common,
        ),
      ],
    );
  }

  double get clickPower => cpuSpeed;
  double get usedRam => projects.where((p) => p.status == ProjectStatus.inProgress).fold(0, (p, e) => p + e.ram);
  double get xpToNextLevel => kBaseXp * pow(level, kLevelUpFactor);

  bool satisfyPrereq(Prerequisite? pq) {
    if (pq == null) return true;
    return pq.cpuPower <= cpuPower && (usedRam + pq.ram) <= ram;
  }
}
