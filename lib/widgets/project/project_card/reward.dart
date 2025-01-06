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
    return LayoutBuilder(
      builder: (context, constraints) {
        final pills = [
          _RewardPill(
            icon: Icons.stars,
            value: '${reward.minXpAmount} - ${reward.maxXpAmount}',
            label: '',
          ),
          if (reward.minMoneyAmount > 0)
            _RewardPill(
              icon: Icons.monetization_on,
              value: '${reward.minMoneyAmount} - ${reward.maxMoneyAmount}',
              label: '',
              valueFirst: false,
            ),
        ];

        // Calculate if pills fit in one row
        double totalWidth = 0;
        for (var i = 0; i < pills.length; i++) {
          // Estimate width for each pill (you might need to adjust these values)
          totalWidth += 120; // Estimated max width of a pill
          if (i < pills.length - 1) totalWidth += 8; // Gap between pills
        }

        final useRow = totalWidth <= constraints.maxWidth;

        return useRow
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: pills,
              )
            : Wrap(
                spacing: 8, // Horizontal gap
                runSpacing: 8, // Vertical gap
                alignment: WrapAlignment.spaceBetween,
                children: pills,
              );
      },
    );
  }
}

class _RewardPill extends StatelessWidget {
  const _RewardPill({
    required this.icon,
    required this.value,
    required this.label,
    this.valueFirst = true,
  });

  final IconData icon;
  final String value;
  final String label;
  final bool valueFirst;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final TextStyle valueStyle = TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          // Scale text size based on container width
          fontSize: constraints.maxWidth < 100 ? 12 : 14,
        );

        final TextStyle labelStyle = TextStyle(
          color: Colors.white70,
          // Scale text size based on container width
          fontSize: constraints.maxWidth < 100 ? 12 : 14,
        );

        final pillContent = [
          Icon(
            icon,
            size: constraints.maxWidth < 100 ? 14 : 16,
            color: Colors.amber,
          ),
          SizedBox(width: constraints.maxWidth < 100 ? 2 : 4),
          if (valueFirst) ...[
            Text(value, style: valueStyle),
            Text(' $label', style: labelStyle),
          ] else ...[
            Text(label, style: labelStyle),
            Text(' $value', style: valueStyle),
          ],
        ];

        return Container(
          padding: EdgeInsets.symmetric(
            horizontal: constraints.maxWidth < 100 ? 8 : 12,
            vertical: constraints.maxWidth < 100 ? 6 : 8,
          ),
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
            children: pillContent,
          ),
        );
      },
    );
  }
}
