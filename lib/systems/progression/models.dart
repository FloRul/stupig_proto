import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stupig_proto/systems/common/models.dart';
part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class ProjectTheme with _$ProjectTheme {
  const factory ProjectTheme({
    required String name,
    required int tier,
    required List<Subtheme> subthemes,
  }) = _Theme;

  const ProjectTheme._();

  (int, int) get progress {
    final total = subthemes.fold(0, (previousValue, element) => previousValue + element.concepts.length);
    final unlocked = subthemes.fold(
        0, (previousValue, element) => previousValue + element.concepts.where((element) => element.unlocked).length);
    return (unlocked, total);
  }

  factory ProjectTheme.fromJson(Map<String, dynamic> json) => _$ProjectThemeFromJson(json);
}

@freezed
class Subtheme with _$Subtheme {
  const factory Subtheme({
    required String name,
    required List<Concept> concepts,
  }) = _Subtheme;

  (int, int) get progress {
    final total = concepts.length;
    final unlocked = concepts.where((element) => element.unlocked).length;
    return (unlocked, total);
  }

  const Subtheme._();

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
