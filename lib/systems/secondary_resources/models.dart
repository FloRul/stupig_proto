import 'package:freezed_annotation/freezed_annotation.dart';
part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class SecondaryResourceState with _$SecondaryResourceState {
  const factory SecondaryResourceState({
    required double techSkills,
    required double devTools,
    required double hardware,
    required int focusPoints,
  }) = _SecondaryResourceState;

  factory SecondaryResourceState.initial() => const SecondaryResourceState(
        techSkills: 0,
        devTools: 0,
        hardware: 0,
        focusPoints: 2,
      );

  factory SecondaryResourceState.fromJson(Map<String, Object?> json) => _$SecondaryResourceStateFromJson(json);
}
