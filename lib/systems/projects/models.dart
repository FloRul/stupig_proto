import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stupig_proto/utils/constants.dart';
import 'package:uuid/uuid.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class Project with _$Project {
  const factory Project({
    required String id,
    required String name,
    required String description,
    required ProjectReward reward,
    required int requiredfocusPoints,
    required ProjectType type,
  }) = _Project;

  static ({double baseFailRate, int requiredFocusPoints}) _getConstraints(ProjectType type) {
    ({double baseFailRate, int requiredFocusPoints}) res = (baseFailRate: 0.0, requiredFocusPoints: 0);

    switch (type) {
      case ProjectType.design:
        res = (baseFailRate: 10, requiredFocusPoints: 3);
        break;
      case ProjectType.implementation:
        res = (baseFailRate: 40, requiredFocusPoints: Random().nextInt(3) + 1);
        break;
      case ProjectType.learning:
        res = (baseFailRate: 0, requiredFocusPoints: Random().nextInt(3) + 1);
        break;
      case ProjectType.optimization:
        res = (baseFailRate: 0, requiredFocusPoints: 1);
        break;
    }
    return res;
  }

  factory Project.random({required int level}) {
    var id = const Uuid().v4();
    var projectType = ProjectType.values[Random().nextInt(ProjectType.values.length)];

    var constraints = _getConstraints(projectType);
    return Project(
      id: id,
      name: 'Project $id',
      description: 'Project $id Description',
      reward: ProjectReward.fromSeeds(
        type: projectType,
        techSkillsLevel: level,
        failRate: constraints.baseFailRate,
        requiredFocusPoints: constraints.requiredFocusPoints,
        isCombined: Random().nextBool(),
      ),
      requiredfocusPoints: constraints.requiredFocusPoints,
      type: projectType,
    );
  }

  factory Project.fromNameDescType({
    required String name,
    required String description,
    required ProjectType type,
    required int techSkillslevelL,
  }) {
    var id = const Uuid().v4();
    var constraints = _getConstraints(type);

    return Project(
      id: id,
      name: name,
      description: description,
      reward: ProjectReward.fromSeeds(
        type: type,
        techSkillsLevel: techSkillslevelL,
        failRate: constraints.baseFailRate,
        requiredFocusPoints: constraints.requiredFocusPoints,
        isCombined: Random().nextBool(),
      ),
      requiredfocusPoints: constraints.requiredFocusPoints,
      type: type,
    );
  }

  factory Project.fromJson(Map<String, Object?> json) => _$ProjectFromJson(json);
}

@freezed
class AvailableProjectsState with _$AvailableProjectsState {
  const factory AvailableProjectsState({
    required List<Project> projects,
    required Map<String, Completion> cooldowns,
    required int availableDecline,
  }) = _AvailableProjectsState;

  factory AvailableProjectsState.fromJson(Map<String, Object?> json) => _$AvailableProjectsStateFromJson(json);
}

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

  Completion tick({void Function()? onComplete}) {
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

enum ProjectType {
  learning,
  design,
  implementation,
  optimization,
}
