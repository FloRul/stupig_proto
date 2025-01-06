import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stupig_proto/systems/projects/project_state.dart';
import 'package:stupig_proto/utils/constants.dart';

class ProgressBar extends ConsumerWidget {
  final Completion completion;
  final VoidCallback? onComplete;

  const ProgressBar({
    super.key,
    required this.completion,
    this.onComplete,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 250),
      child: completion.isComplete
          ? Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white.withValues(alpha: 0.1),
                border: Border.all(
                  color: Colors.white.withValues(alpha: 0.2),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.1),
                    blurRadius: 10,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: FilledButton.icon(
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.transparent,
                ),
                onPressed: onComplete,
                icon: const Icon(Icons.check_circle),
                label: const Text(
                  'Complete',
                  style: TextStyle(
                    fontSize: 12,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            )
          : Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white.withValues(alpha: 0.1),
                border: Border.all(
                  color: Colors.white.withValues(alpha: 0.2),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.1),
                    blurRadius: 10,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: TweenAnimationBuilder<double>(
                    tween: Tween<double>(begin: 0, end: completion.progress),
                    duration: const Duration(milliseconds: kTickInterval),
                    curve: Curves.linear,
                    builder: (context, animatedProgress, child) {
                      return LinearProgressIndicator(
                        value: animatedProgress,
                        minHeight: 12,
                        backgroundColor: Colors.transparent,
                      );
                    }),
              ),
            ),
    );
  }
}
