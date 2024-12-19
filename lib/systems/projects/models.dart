import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class Project with _$Project {
  const factory Project({
    required String id,
    required String name,
    required String description,
    required double progress,
  }) = _Project;

  factory Project.fromJson(Map<String, Object?> json) => _$ProjectFromJson(json);
}
