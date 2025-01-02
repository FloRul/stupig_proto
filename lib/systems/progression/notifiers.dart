import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stupig_proto/systems/primary_resources/notifiers.dart';
import 'package:stupig_proto/systems/progression/models.dart';
import 'package:stupig_proto/systems/progression/services/db_service.dart';
import 'package:stupig_proto/systems/progression/services/progression_repo.dart';

part 'notifiers.g.dart';

@riverpod
Future<List<FlashCard>> nextLvlFlashCards(Ref ref) async {
  var tier = ref.read(playerTierProvider);
  var concepts = await ref.read(progressionRepositoryProvider).value!.getRandomLockedConcepts(tier, 5);
  return concepts.map((e) => FlashCard(concept: e, bonus: "Random bonus")).toList();
}

@Riverpod(keepAlive: true)
Future<ProgressionRepository> progressionRepository(Ref ref) async {
  var repo = ProgressionRepository(DatabaseHelper());
  await repo.init('data/updated_flashcards_20241229.json');
  return repo;
}

@Riverpod(keepAlive: true)
Future<List<ProjectTheme>> themes(Ref ref) async {
  return (await ref.watch(progressionRepositoryProvider).value!.loadThemes());
}

@riverpod
List<FlashCard> subthemeFlashCards(Ref ref, Subtheme subtheme) {
  return subtheme.concepts.map((e) => FlashCard(concept: e, bonus: "Random bonus")).toList();
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
