import 'package:flutter/material.dart';
import 'package:stupig_proto/systems/projects/project_state.dart';

class RewardWidget extends StatelessWidget {
  const RewardWidget({
    super.key,
    required this.reward,
  });

  final ProjectReward reward;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (reward.minXpAmount > 0) ...[
            _RewardItem(
              icon: Icons.stars,
              value: '${reward.minXpAmount} - ${reward.maxXpAmount}',
            ),
          ],
          if (reward.minMoneyAmount > 0) ...[
            const SizedBox(width: 12),
            _RewardItem(
              icon: Icons.monetization_on,
              value: '${reward.minMoneyAmount} - ${reward.maxMoneyAmount}',
            ),
          ],
        ],
      ),
    );
  }
}

class _RewardItem extends StatelessWidget {
  const _RewardItem({
    required this.icon,
    required this.value,
  });

  final IconData icon;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          size: 16,
          color: Colors.white,
        ),
        const SizedBox(width: 4),
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
