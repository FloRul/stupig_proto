import 'package:flutter/material.dart';

class GroupArea extends StatelessWidget {
  const GroupArea({
    super.key,
    this.title,
    this.child,
  });

  final String? title;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black26,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null) Text(title!, style: const TextStyle(fontSize: 20)),
          Expanded(child: child ?? const Placeholder()),
        ],
      ),
    );
  }
}
