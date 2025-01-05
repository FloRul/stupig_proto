﻿import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stupig_proto/systems/projects/project_state.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class Project with _$Project {
  const factory Project({
    required String id,
    required String name,
    required String description,
    required ProjectReward reward,
    required ProjectType type,
  }) = _Project;

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
