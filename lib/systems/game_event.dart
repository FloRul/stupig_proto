import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stupig_proto/systems/feature_unlock/models.dart';
import 'package:stupig_proto/systems/projects/models.dart';
import 'package:stupig_proto/systems/secondary_resources/models.dart';
// ignore: unused_import
import 'package:stupig_proto/systems/secondary_resources/notifiers.dart';
part 'game_event.freezed.dart';

@freezed
sealed class GameEvent with _$GameEvent {
  const factory GameEvent.projectCompleted({required final Project project, final String? tag}) = ProjectCompleted;
  const factory GameEvent.rewardEarned({required final ProjectReward reward}) = RewardEarned;
  const factory GameEvent.projectStarted({required final Project project, final String? tag}) = ProjectStarted;
  const factory GameEvent.levelUp({final String? tag}) = LevelUp;
  const factory GameEvent.saveGame() = SaveGame;
  const factory GameEvent.loadGame() = LoadGame;
  const factory GameEvent.unlockFeature({required final Feature feature}) = UnlockFeature;
  const factory GameEvent.purchase({required final PurchaseType type}) = Purchase;
}

@freezed
sealed class PurchaseType with _$PurchaseType {
  const factory PurchaseType.resourceUpgrade({required ResourceType type}) = ResourceUpgrade;
}
