import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stupig_proto/systems/projects/models.dart';
part 'project_state.freezed.dart';
part 'project_state.g.dart';

@freezed
class ActiveProjectState with _$ActiveProjectState {
  const factory ActiveProjectState({
    required Project project,
    required Completion completion,
    
    required bool displayCompletionDetails,
  }) = _ActiveProjectState;

  factory ActiveProjectState.fromProject(
    Project project,
    int seed,
    bool displayReward,
    bool displayCompletionDetails,
  ) =>
      ActiveProjectState(
        project: project,
        completion: Completion.initial(seed),
        
        displayCompletionDetails: displayCompletionDetails,
      );

  factory ActiveProjectState.fromJson(Map<String, Object?> json) => _$ActiveProjectStateFromJson(json);
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
    required double baseRate,
    required List<double> multipliers,
  }) = _Completion;

  factory Completion.initial(int seed) => Completion(
        baseAmount: 1 + seed * 20,
        completedAmount: 0,
        baseRate: 1,
        multipliers: [0],
      );

  Completion tick() {
    return copyWith(
      completedAmount: min(completedAmount + rate, baseAmount),
    );
  }

  double get progress => completedAmount / baseAmount;
  double get rate => baseRate + multipliers.reduce((a, b) => a * b);
  bool get isComplete => completedAmount >= baseAmount;

  const Completion._();
  factory Completion.fromJson(Map<String, Object?> json) => _$CompletionFromJson(json);
}

@freezed
class AvailableProjectState with _$AvailableProjectState {
  const factory AvailableProjectState({
    required Project project,
    required Completion cooldown,
  }) = _AvailableProjectState;

  factory AvailableProjectState.initial(
    Project project,
  ) =>
      AvailableProjectState(
        project: project,
        cooldown: const Completion(
          baseAmount: 20,
          completedAmount: 0,
          baseRate: 1,
          multipliers: [0],
        ),
      );

  bool get isAvailable => cooldown.isComplete;

  const AvailableProjectState._();
  factory AvailableProjectState.fromJson(Map<String, Object?> json) => _$AvailableProjectStateFromJson(json);
}
