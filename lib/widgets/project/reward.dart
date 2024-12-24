import 'package:flutter/material.dart';
import 'package:stupig_proto/systems/projects/project_state.dart';

class RewardWidget extends StatelessWidget {
  const RewardWidget({
    super.key,
    required this.reward,
    this.showRewards = true,
  });

  final ProjectReward reward;
  final bool showRewards;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black26,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Reward'),
          const Divider(),
          Text(
            '${showRewards ? reward.xpAmount : '???'} XP',
          ),
          if (reward.moneyAmount > 0)
            Text(
              '${showRewards ? reward.moneyAmount : '???'} \$',
            ),
        ],
      ),
    );
  }
}
