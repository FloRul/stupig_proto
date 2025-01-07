import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/v4.dart';
part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class Resource with _$Resource {
  const factory Resource({
    required String key,
    required String name,
    @Default(0.0) double value,
  }) = _Resource;
}

@freezed
class Upgrade with _$Upgrade {
  const factory Upgrade({
    required String id,
    required String targetResourceId,
    required double baseCost,
    @Default(1.0) double costMultiplier,
    @Default(0) int level,
  }) = _Upgrade;
}

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
