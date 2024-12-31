import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stupig_proto/systems/common/models.dart';
part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class Theme with _$Theme {
  const factory Theme({
    required String name,
    required int tier,
    required List<Subtheme> subthemes,
  }) = _Theme;

  factory Theme.fromJson(Map<String, dynamic> json) => _$ThemeFromJson(json);
}

@freezed
class Subtheme with _$Subtheme {
  const factory Subtheme({
    required String name,
    required List<Concept> concepts,
  }) = _Subtheme;

  factory Subtheme.fromJson(Map<String, dynamic> json) => _$SubthemeFromJson(json);
}

@freezed
class Concept with _$Concept {
  const factory Concept({
    required String name,
    required Rarity rarity,
    required bool unlocked,
    required String content,
  }) = _Concept;

  factory Concept.fromJson(Map<String, dynamic> json) => _$ConceptFromJson(json);
}

@freezed
class FlashCard with _$FlashCard {
  const factory FlashCard({
    required Concept concept,
    required String bonus,
  }) = _FlashCard;

  factory FlashCard.fromJson(Map<String, dynamic> json) => _$FlashCardFromJson(json);
}
