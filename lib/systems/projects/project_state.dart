﻿import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stupig_proto/systems/feature_unlock/models.dart';
import 'package:stupig_proto/systems/projects/models.dart';
import 'package:stupig_proto/utils/constants.dart';

part 'project_state.freezed.dart';
part 'project_state.g.dart';

@freezed
class ActiveProjectsState with _$ActiveProjectsState {
  const factory ActiveProjectsState({required List<(Project, Completion)> activeProjects}) = _ActiveProjectsState;
  factory ActiveProjectsState.initial() => const ActiveProjectsState(activeProjects: []);
  const ActiveProjectsState._();

  int get totalFocusPoints => activeProjects.fold(0, (acc, p) => acc + p.$1.requiredfocusPoints);

  factory ActiveProjectsState.fromJson(Map<String, Object?> json) => _$ActiveProjectsStateFromJson(json);
}

@freezed
class ProjectReward with _$ProjectReward {
  const factory ProjectReward({
    required int minXpAmount,
    required int maxXpAmount,
    required int minMoneyAmount,
    required int maxMoneyAmount,
    required double failRate,
  }) = _ProjectReward;

  factory ProjectReward.none() => const ProjectReward(
        minXpAmount: 0,
        maxXpAmount: 0,
        minMoneyAmount: 0,
        maxMoneyAmount: 0,
        failRate: 0,
      );

  factory ProjectReward.fromGameState({
    required ProjectType type,
    required int level,
    required double failRate,
    required bool isCombined,
  }) {
    var minLvlSeed = (2 + pow(kGlobalSeed, level / 17) * level / 17).toDouble();
    var maxLvlSeed = (10 + pow(kGlobalSeed, level / 15) * level / 10).toDouble();
    return switch (type) {
      ProjectType.learning => ProjectReward(
          minXpAmount: (minLvlSeed * 1.2).toInt(),
          maxXpAmount: (maxLvlSeed * 1.2).toInt(),
          minMoneyAmount: 0,
          maxMoneyAmount: 0,
          failRate: 0,
        ),
      ProjectType.design => ProjectReward(
          minXpAmount: (minLvlSeed * (isCombined ? 1.5 : 0.8)).toInt(),
          maxXpAmount: (maxLvlSeed * (isCombined ? 1.5 : 0.8)).toInt(),
          minMoneyAmount: minLvlSeed.toInt(),
          maxMoneyAmount: maxLvlSeed.toInt(),
          failRate: failRate,
        ),
      ProjectType.implementation => ProjectReward(
          minXpAmount: (minLvlSeed * (isCombined ? 1.5 : 0.9)).toInt(),
          maxXpAmount: (maxLvlSeed * (isCombined ? 1.5 : 0.9)).toInt(),
          minMoneyAmount: minLvlSeed.toInt(),
          maxMoneyAmount: maxLvlSeed.toInt(),
          failRate: failRate,
        ),
      ProjectType.optimization => ProjectReward.none()
    };
  }

  factory ProjectReward.fromJson(Map<String, Object?> json) => _$ProjectRewardFromJson(json);
}

@freezed
class Completion with _$Completion {
  const factory Completion({
    required double baseAmount,
    required double completedAmount,
    required double baseRate,
    required List<double> multipliers,
  }) = _Completion;

  factory Completion.initial(int seed) => Completion(
        baseAmount: 1 + seed * 20,
        completedAmount: 0,
        baseRate: 1,
        multipliers: [1], // changed from 0 to 1 to avoid rate being 0
      );

  Completion tick() {
    return copyWith(
      completedAmount: min(completedAmount + rate, baseAmount),
    );
  }

  double get progress => completedAmount / baseAmount;
  double get rate => baseRate * multipliers.reduce((a, b) => a * b); // corrected calculation
  bool get isComplete => completedAmount >= baseAmount;

  const Completion._();
  factory Completion.fromJson(Map<String, Object?> json) => _$CompletionFromJson(json);
}
