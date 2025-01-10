import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stupig_proto/systems/projects/project_state.dart';
import 'package:stupig_proto/utils/constants.dart';

class ProgressBar extends ConsumerWidget {
  final Completion completion;
  final bool? completionResult;
  final VoidCallback onceCompleted;

  const ProgressBar({
    super.key,
    required this.completion,
    required this.onceCompleted,
    this.completionResult,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 250),
      child: completion.isComplete
          ? completionResult != null
              ? FilledButton.icon(
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.transparent,
                  ),
                  onPressed: null,
                  icon: Icon(
                    completionResult! ? Icons.check_circle : Icons.error_outline,
                    color: completionResult! ? Colors.green : Colors.red,
                  ),
                  label: Text(
                    completionResult! ? 'Success' : 'Failed',
                    style: TextStyle(
                      fontSize: 12,
                      color: completionResult! ? Colors.green : Colors.red,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                )
              : const SizedBox.shrink()
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
