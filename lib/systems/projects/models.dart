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
    required ProjectReward reward,
  }) = _Project;

  factory Project.fromJson(Map<String, Object?> json) => _$ProjectFromJson(json);
}

@freezed
class ProjectBoardState with _$ProjectBoardState {
  const factory ProjectBoardState({required List<Project> projects}) = _ProjectBoardState;

  factory ProjectBoardState.fromJson(Map<String, Object?> json) => _$ProjectBoardStateFromJson(json);
}
