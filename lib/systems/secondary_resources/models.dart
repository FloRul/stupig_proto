import 'package:freezed_annotation/freezed_annotation.dart';
part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class SecondaryResourceState with _$SecondaryResourceState {
  const factory SecondaryResourceState({
    required double cpuPower,
    required int ram,
    required int gpuVram,
    required int availableProjectSlots,
    required int reputationPoints,
  }) = _SecondaryResourceState;

  factory SecondaryResourceState.initial() => const SecondaryResourceState(
        cpuPower: 0,
        ram: 0,
        gpuVram: 0,
        availableProjectSlots: 1,
        reputationPoints: 0,
      );

  factory SecondaryResourceState.fromJson(Map<String, Object?> json) => _$SecondaryResourceStateFromJson(json);
}
