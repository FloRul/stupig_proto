import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stupig_proto/systems/projects/models.dart';

part 'project_state.freezed.dart';
part 'project_state.g.dart';

@freezed
class ProjectState with _$ProjectState {
  const factory ProjectState.active({
    required Project project,
    required Completion completion,
  }) = _ActiveProjectState;

  const factory ProjectState.available({
    required Project project,
    required Completion? cooldown, // Nullable cooldown for always available
  }) = _AvailableProjectState;

  factory ProjectState.activeFromProject(Project project, int seed) => ProjectState.active(
        project: project,
        completion: Completion.initial(seed),
      );

  factory ProjectState.availableInitial(Project project) => ProjectState.available(
        project: project,
        cooldown: const Completion(
          baseAmount: 20,
          completedAmount: 0,
          baseRate: 1,
          multipliers: [0],
        ),
      );

  bool get isAvailable => this is _AvailableProjectState;
  bool get isActive => this is _ActiveProjectState;

  @override
  Project get project => map(
        active: (activeState) => activeState.project,
        available: (availableState) => availableState.project,
      );

  Completion? get completionOrCooldown => map(
        active: (activeState) => activeState.completion,
        available: (availableState) => availableState.cooldown,
      );

  const ProjectState._();
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
