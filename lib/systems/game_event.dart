﻿import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stupig_proto/systems/projects/models.dart';
part 'game_event.freezed.dart';

@freezed
sealed class GameEvent with _$GameEvent {
  const factory GameEvent.projectCompleted(final Project project) = ProjectCompleted;
  const factory GameEvent.projectStarted(final Project project) = ProjectStarted;
}