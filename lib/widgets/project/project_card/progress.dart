import 'package:flutter/material.dart';

class ProjectProgress extends StatelessWidget {
  final double progress;
  final bool isComplete;
  final VoidCallback? onComplete;

  const ProjectProgress({
    super.key,
    required this.progress,
    required this.isComplete,
    this.onComplete,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 250),
      child: isComplete
          ? FilledButton.icon(
              onPressed: onComplete,
              icon: const Icon(Icons.check_circle),
              label: const Text('Complete'),
            )
          : ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: LinearProgressIndicator(
                value: progress,
                backgroundColor: Colors.white24,
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                minHeight: 8,
              ),
            ),
    );
  }
}
