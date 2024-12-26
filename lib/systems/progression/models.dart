import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stupig_proto/systems/common/models.dart';
part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class FlashCard with _$FlashCard {
  const factory FlashCard({
    required String name,
    required String content,
    required Rarity rarity,
  }) = _FlashCard;

  factory FlashCard.fromJson(Map<String, Object?> json) => _$FlashCardFromJson(json);
}
