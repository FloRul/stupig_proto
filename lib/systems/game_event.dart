import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stupig_proto/systems/projects/models.dart';
import 'package:stupig_proto/systems/projects/project_state.dart';
part 'game_event.freezed.dart';

@freezed
sealed class GameEvent with _$GameEvent {
  const factory GameEvent.projectCompleted({
    required final ActiveProjectState project,
    final String? tag,
  }) = ProjectCompleted;
  const factory GameEvent.projectStarted({
    required final Project project,
    final String? tag,
  }) = ProjectStarted;
}
