import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stupig_proto/systems/common/models.dart';
import 'package:stupig_proto/systems/primary_resources/notifiers.dart';
import 'package:stupig_proto/systems/progression/models.dart';
import 'package:stupig_proto/systems/progression/services/db_service.dart';
import 'package:stupig_proto/systems/progression/services/progression_repo.dart';

part 'notifiers.g.dart';

@riverpod
List<FlashCard> nextLvlFlashCards(Ref ref) {
  // var currentLevel = ref.watch(experienceNotifierProvider.select((value) => value.level));
  return [
    const FlashCard(
        concept: Concept(
          unlocked: false,
          name: "Rare Card 1",
          content: "Rare Card 1 content",
          rarity: Rarity.rare,
        ),
        bonus: "Random bonus"),
    const FlashCard(
        concept: Concept(
          unlocked: false,
          name: "Legendary Card 2",
          content: "Legendary Card 2 content",
          rarity: Rarity.legendary,
        ),
        bonus: "Random bonus"),
    const FlashCard(
        concept: Concept(
          unlocked: false,
          name: "Common Card 3",
          content: "Common Card 3 content",
          rarity: Rarity.common,
        ),
        bonus: "Random bonus"),
    const FlashCard(
        concept: Concept(
          unlocked: false,
          name: "Uncommon Card 4",
          content: "Uncommon Card 4 content",
          rarity: Rarity.uncommon,
        ),
        bonus: "Random bonus"),
    const FlashCard(
        concept: Concept(
          unlocked: false,
          name: "Epic Card 5",
          content: "Epic Card 5 content",
          rarity: Rarity.epic,
        ),
        bonus: "Random bonus"),
  ];
}

@Riverpod(keepAlive: true)
Future<ProgressionRepository> progressionRepository(Ref ref) async {
  var repo = ProgressionRepository(DatabaseHelper());
  await repo.initializeIfNeeded('data/updated_flashcards_20241229.json');
  return repo;
}

@Riverpod(keepAlive: true)
Future<List<ProjectTheme>> themes(Ref ref) async {
  return (await ref.watch(progressionRepositoryProvider).value!.loadThemes());
}

@Riverpod(keepAlive: true)
int playerTier(Ref ref) {
  var currentLevel = ref.watch(experienceNotifierProvider.select((value) => value.level));
  switch (currentLevel) {
    case > 4 && <= 15:
      return 2;
    case > 15 && <= 20:
      return 3;
    default:
      return 1;
  }
}
