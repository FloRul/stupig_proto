import 'package:flutter/material.dart';

class GroupArea extends StatelessWidget {
  const GroupArea({
    super.key,
    this.title,
    this.child,
    this.isHighlighted = false,
    this.trailing,
  });

  final String? title;
  final Widget? child;
  final bool isHighlighted;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black26,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: isHighlighted ? Colors.green.withValues(alpha: 0.5) : Colors.transparent,
          width: 1.5,
        ),
      ),
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title!, style: const TextStyle(fontSize: 20)),
                if (trailing != null) trailing!,
              ],
            ),
          Expanded(child: child ?? const Placeholder()),
        ],
      ),
    );
  }
}
