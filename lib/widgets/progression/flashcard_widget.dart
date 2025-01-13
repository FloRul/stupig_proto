// flash_card_widget.dart
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:stupig_proto/systems/common/models.dart';
import 'package:stupig_proto/systems/progression/models.dart';
import 'package:stupig_proto/utils/constants.dart';

class FlashCardWidget extends StatelessWidget {
  const FlashCardWidget({
    super.key,
    required this.card,
    this.unlocked = true,
  });

  final FlashCard card;
  final bool unlocked;

  @override
  Widget build(BuildContext context) {
    final rarityColor = unlocked ? _getRarityColor(card.concept.rarity) : Colors.grey.shade700;

    return GestureDetector(
      onLongPress: unlocked
          ? () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => FlashCardDetailView(
                    card: card,
                    rarityColor: rarityColor,
                  ),
                ),
              );
            }
          : null,
      child: Hero(
        tag: 'flash_card_${card.concept.name}',
        child: Material(
          color: Colors.transparent,
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 4),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: rarityColor.withAlpha(51), // 0.2 opacity
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: rarityColor,
                width: 2,
              ),
              boxShadow: [
                BoxShadow(
                  color: rarityColor.withAlpha(77), // 0.3 opacity
                  blurRadius: 8,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      card.concept.name,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: rarityColor,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      card.concept.content,
                      maxLines: 5,
                      softWrap: true,
                      style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontSize: 10,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 4),
                  ],
                ),
                if (!unlocked)
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        color: Colors.black.withAlpha(128), // 0.5 opacity
                        child: const Center(
                          child: Icon(
                            Icons.lock_rounded,
                            color: Colors.grey,
                            size: 24,
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Color _getRarityColor(Rarity rarity) {
    switch (rarity) {
      case Rarity.common:
        return Colors.grey.shade400;
      case Rarity.uncommon:
        return Colors.green.shade400;
      case Rarity.rare:
        return Colors.blue.shade400;
      case Rarity.epic:
        return Colors.purple.shade400;
      case Rarity.legendary:
        return Colors.orange.shade400;
    }
  }
}

// flash_card_detail_view.dart
class FlashCardDetailView extends StatelessWidget {
  const FlashCardDetailView({
    super.key,
    required this.card,
    required this.rarityColor,
  });

  final FlashCard card;
  final Color rarityColor;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'flash_card_${card.concept.name}',
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.close, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Center(
            child: AspectRatio(
              aspectRatio: kCardAspectRatio,
              child: Container(
                margin: const EdgeInsets.all(24),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: rarityColor.withAlpha(51), // 0.2 opacity
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: rarityColor,
                    width: 2,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: rarityColor.withAlpha(77), // 0.3 opacity
                      blurRadius: 12,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      card.concept.name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: rarityColor,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      card.concept.content,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
