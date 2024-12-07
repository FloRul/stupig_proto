import 'package:flutter/material.dart';

class ProgressSection extends StatelessWidget {
  final double progress;

  const ProgressSection({super.key, required this.progress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TweenAnimationBuilder<double>(
        duration: const Duration(milliseconds: 250),
        curve: Curves.linear,
        tween: Tween<double>(
          begin: 0,
          end: progress,
        ),
        builder: (context, value, _) => LinearProgressIndicator(
          value: value,
          minHeight: 20,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
