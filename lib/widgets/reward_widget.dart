import 'package:flutter/material.dart';
import 'package:stupig_proto/models/models.dart';

class RewardWidget extends StatelessWidget {
  const RewardWidget({super.key, required this.reward});
  final Reward reward;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withAlpha(125),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            reward.xp.toString(),
            textAlign: TextAlign.right,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
          const SizedBox(width: 4),
          const Icon(
            Icons.explore,
            size: 18,
            color: Colors.green,
          ),
          Visibility(
            visible: (reward.money ?? 0) > 0,
            child: Row(
              children: [
                const SizedBox(width: 8),
                Text(
                  reward.money.toString(),
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                const SizedBox(width: 4),
                const Icon(
                  Icons.attach_money,
                  size: 18,
                  color: Colors.green,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
