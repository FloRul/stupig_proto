import 'package:freezed_annotation/freezed_annotation.dart';
part 'projects_state.freezed.dart';
part 'projects_state.g.dart';

@freezed
class ProjectsState with _$ProjectsState {
  const factory ProjectsState() = _ProjectsState;

  factory ProjectsState.fromJson(Map<String, Object?> json) => _$ProjectsStateFromJson(json);
}
