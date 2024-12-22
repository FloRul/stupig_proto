import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stupig_proto/systems/projects/models.dart';
part 'project_state.freezed.dart';
part 'project_state.g.dart';

@freezed
class ProjectState with _$ProjectState {
  const factory ProjectState({
    required Project project,
    required Completion completion,
    required ProjectReward reward,
  }) = _ProjectState;

  factory ProjectState.fromProject(Project project, int seed) => ProjectState(
        project: project,
        completion: Completion.initial(seed),
        reward: const ProjectReward(xpAmount: 1, moneyAmount: 1),
      );

  factory ProjectState.fromJson(Map<String, Object?> json) => _$ProjectStateFromJson(json);
}

@freezed
class ProjectReward with _$ProjectReward {
  const factory ProjectReward({
    required int xpAmount,
    required int moneyAmount,
  }) = _ProjectReward;

  factory ProjectReward.fromJson(Map<String, Object?> json) => _$ProjectRewardFromJson(json);
}

@freezed
class Completion with _$Completion {
  const factory Completion({
    required double baseAmount,
    required double completedAmount,
    required List<double> multipliers,
  }) = _Completion;

  factory Completion.initial(int seed) => Completion(
        baseAmount: seed * 20,
        completedAmount: 0,
        multipliers: [0],
      );

  Completion tick() => copyWith(
        completedAmount: min(completedAmount + rate, baseAmount),
      );

  double get progress => completedAmount / baseAmount;
  double get rate => 1 + multipliers.reduce((a, b) => a * b);
  bool get isComplete => completedAmount >= baseAmount;

  const Completion._();
  factory Completion.fromJson(Map<String, Object?> json) => _$CompletionFromJson(json);
}
