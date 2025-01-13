import 'dart:math';
import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stupig_proto/systems/projects/models.dart';
import 'package:stupig_proto/utils/constants.dart';

part 'project_state.freezed.dart';
part 'project_state.g.dart';

@freezed
class ActiveProjectsState with _$ActiveProjectsState {
  const factory ActiveProjectsState({required List<(Project, Completion, bool?)> activeProjects}) =
      _ActiveProjectsState;
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

  factory ProjectReward.fromSeeds({
    required ProjectType type,
    required int techSkillsLevel,
    required double failRate,
    required int requiredFocusPoints,
    required bool isCombined,
  }) {
    var minLvlSeed =
        (2 + pow(kGlobalSeed, techSkillsLevel / 17) * techSkillsLevel / 17 + requiredFocusPoints).toDouble();
    var maxLvlSeed =
        (5 + pow(kGlobalSeed, techSkillsLevel / 15) * techSkillsLevel / 10 + requiredFocusPoints).toDouble();
    return switch (type) {
      ProjectType.learning => ProjectReward(
          minXpAmount: (minLvlSeed * 1.5).toInt(),
          maxXpAmount: (maxLvlSeed * 1.5).toInt(),
          minMoneyAmount: 0,
          maxMoneyAmount: 0,
          failRate: 0,
        ),
      ProjectType.design => ProjectReward(
          minXpAmount: (minLvlSeed * (isCombined ? 1 : 0.8)).toInt(),
          maxXpAmount: (maxLvlSeed * (isCombined ? 1 : 0.8)).toInt(),
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
    required double rate,
  }) = _Completion;

  factory Completion.initial(double rate) => Completion(
        baseAmount: kBaseCompletionTime.toDouble(),
        completedAmount: 0,
        rate: rate,
      );

  Completion tick({VoidCallback? onComplete}) {
    final newC = copyWith(
      completedAmount: min(completedAmount + rate, baseAmount),
    );
    if (!isComplete) {
      onComplete?.call();
    }
    return newC;
  }

  double get progress => completedAmount / baseAmount;
  bool get isComplete => completedAmount >= baseAmount;

  const Completion._();
  factory Completion.fromJson(Map<String, Object?> json) => _$CompletionFromJson(json);
}
