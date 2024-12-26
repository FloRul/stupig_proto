import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stupig_proto/systems/projects/models.dart';
part 'game_event.freezed.dart';

@freezed
sealed class GameEvent with _$GameEvent {
  const factory GameEvent.projectCompleted({required final Project project, final String? tag}) = ProjectCompleted;
  const factory GameEvent.projectStarted({required final Project project, final String? tag}) = ProjectStarted;
  const factory GameEvent.levelUp({final String? tag}) = LevelUp;
}
