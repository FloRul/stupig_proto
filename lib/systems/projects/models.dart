import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stupig_proto/systems/projects/project_state.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class Project with _$Project {
  const factory Project({
    required String id,
    required String name,
    required String description,
  }) = _Project;

  factory Project.fromJson(Map<String, Object?> json) => _$ProjectFromJson(json);
}

@freezed
class ProjectsState with _$ProjectsState {
  const factory ProjectsState({
    required List<ActiveProjectState> activeProjects,
    required List<Project> completedProjects,
  }) = _ProjectsState;

  factory ProjectsState.fromJson(Map<String, Object?> json) => _$ProjectsStateFromJson(json);
}
