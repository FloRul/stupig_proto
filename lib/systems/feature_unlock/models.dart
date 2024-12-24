import 'package:freezed_annotation/freezed_annotation.dart';
part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class FeaturesState with _$FeaturesState {
  const factory FeaturesState({
    required bool showRewards,
  }) = _FeaturesState;

  factory FeaturesState.initial() => const FeaturesState(
        showRewards: false,
      );

  factory FeaturesState.fromJson(Map<String, Object?> json) => _$FeaturesStateFromJson(json);
}
