import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stupig_proto/systems/common/models.dart';
import 'package:stupig_proto/systems/primary_resources/notifiers.dart';
import 'package:stupig_proto/systems/progression/models.dart';

final nextLvlFlashCardsProvider = Provider<List<FlashCard>>((ref) {
  // var currentLevel = ref.watch(experienceNotifierProvider.select((value) => value.level));
  return [
    const FlashCard(name: "Rare Card 1", content: "Rare Card 1 content", rarity: Rarity.rare),
    const FlashCard(name: "Legendary Card 2", content: "Legendary Card 2 content", rarity: Rarity.legendary),
    const FlashCard(name: "Common Card 3", content: "Common Card 3 content", rarity: Rarity.common),
    const FlashCard(name: "Uncommon Card 4", content: "Uncommon Card 4 content", rarity: Rarity.uncommon),
    const FlashCard(name: "Epic Card 5", content: "Epic Card 5 content", rarity: Rarity.epic),
  ];
});
