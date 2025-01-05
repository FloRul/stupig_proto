﻿import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stupig_proto/systems/feature_unlock/models.dart';
import 'package:stupig_proto/systems/projects/models.dart';
part 'game_event.freezed.dart';

@freezed
sealed class GameEvent with _$GameEvent {
  const factory GameEvent.projectCompleted({required final Project project, final String? tag}) = ProjectCompleted;
  const factory GameEvent.xpEarned({required final int amount}) = XpEarned;
  const factory GameEvent.moneyEarned({required final int amount}) = MoneyEarned;
  const factory GameEvent.projectStarted({required final Project project, final String? tag}) = ProjectStarted;
  const factory GameEvent.levelUp({final String? tag}) = LevelUp;
  const factory GameEvent.purchase({required final PurchaseType type}) = Purchase;
  const factory GameEvent.saveGame() = SaveGame;
  const factory GameEvent.loadGame() = LoadGame;
  const factory GameEvent.unlockFeature({required final Feature feature}) = UnlockFeature;
}

enum PurchaseType {
  availableSlot,
  feature,
}
