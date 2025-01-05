import 'package:freezed_annotation/freezed_annotation.dart';
part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class FeaturesState with _$FeaturesState {
  const factory FeaturesState({
    required Map<Feature, bool> features,
  }) = _FeaturesState;

  factory FeaturesState.initial() => const FeaturesState(
        features: {
          Feature.showRewards: false,
          Feature.canPurchaseAvailableSlot: false,
          Feature.canPurchaseActiveSlot: false,
          Feature.canSaveLoadGame: false,
          Feature.canSeePrgression: false,
        },
      );

  factory FeaturesState.fromJson(Map<String, Object?> json) => _$FeaturesStateFromJson(json);
}

enum Feature {
  showRewards,
  canPurchaseAvailableSlot,
  canPurchaseActiveSlot,
  canSaveLoadGame,
  canSeePrgression,
}
