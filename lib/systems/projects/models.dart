import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stupig_proto/systems/projects/project_state.dart';
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
      reward: ProjectReward.fromGameState(
        type: projectType,
        level: level,
        failRate: constraints.baseFailRate,
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
    required int level,
  }) {
    var id = const Uuid().v4();
    var constraints = _getConstraints(type);

    return Project(
      id: id,
      name: name,
      description: description,
      reward: ProjectReward.fromGameState(
        type: type,
        level: level,
        failRate: constraints.baseFailRate,
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
  }) = _AvailableProjectsState;
}

enum ProjectType {
  learning,
  design,
  implementation,
  optimization,
}
