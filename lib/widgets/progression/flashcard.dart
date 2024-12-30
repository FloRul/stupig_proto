import 'package:flutter/material.dart';
import 'package:stupig_proto/systems/common/models.dart';
import 'package:stupig_proto/systems/progression/models.dart';

class FlashCardWidget extends StatelessWidget {
  const FlashCardWidget({
    super.key,
    required this.card,
  });
  final FlashCard card;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: _getRarityColor(card.rarity).withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: _getRarityColor(card.rarity),
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: _getRarityColor(card.rarity).withValues(alpha: 0.3),
            blurRadius: 8,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            card.name,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: _getRarityColor(card.rarity),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            card.content,
            style: TextStyle(
              fontSize: 10,
              color: Colors.grey.shade700,
            ),
          ),
          const SizedBox(height: 4),
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
