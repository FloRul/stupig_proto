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

  factory Project.random({required int level}) {
    var id = const Uuid().v4();
    var projectType = ProjectType.values[Random().nextInt(ProjectType.values.length)];
    return Project(
      id: id,
      name: 'Project $id',
      description: 'Project $id Description',
      reward: ProjectReward.fromGameState(
        type: projectType,
        level: level,
        failRate: Random().nextDouble(),
        isCombined: Random().nextBool(),
      ),
      requiredfocusPoints: projectType == ProjectType.design ? Random().nextInt(2) + 1 : Random().nextInt(2) + 2,
      type: projectType,
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
