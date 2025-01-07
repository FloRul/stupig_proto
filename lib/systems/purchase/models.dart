import 'package:freezed_annotation/freezed_annotation.dart';
part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class Upgrade with _$Upgrade{
  const factory Upgrade({required }) = _Upgrade;

factory Upgrade.fromJson(Map<String, Object?> json)
=> _$UpgradeFromJson(json);
}