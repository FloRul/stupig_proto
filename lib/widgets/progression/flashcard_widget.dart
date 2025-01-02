import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:stupig_proto/systems/common/models.dart';
import 'package:stupig_proto/systems/progression/models.dart';

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

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: rarityColor.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: rarityColor,
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: rarityColor.withValues(alpha: 0.3),
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
                  color: Colors.black.withValues(alpha: 0.5),
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
