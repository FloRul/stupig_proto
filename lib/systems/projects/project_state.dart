import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stupig_proto/systems/completion/models.dart';
import 'package:stupig_proto/systems/projects/models.dart';
part 'project_state.freezed.dart';
part 'project_state.g.dart';

@freezed
class ProjectState with _$ProjectState {
  const factory ProjectState({
    required Project project,
    required Completion completion,
  }) = _ProjectState;

  factory ProjectState.fromProject(Project project, int seed) => ProjectState(
        project: project,
        completion: Completion.initial(seed),
      );

  factory ProjectState.fromJson(Map<String, Object?> json) => _$ProjectStateFromJson(json);
}
