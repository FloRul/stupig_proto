import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stupig_proto/systems/global_ticker.dart/global_ticker.dart';
import 'package:stupig_proto/systems/projects/project_state.dart';

class ProgressBar extends ConsumerStatefulWidget {
  final Completion completion;
  final VoidCallback? onComplete;

  const ProgressBar({
    super.key,
    required this.completion,
    this.onComplete,
  });

  @override
  ConsumerState<ProgressBar> createState() => _ProjectProgressState();
}

class _ProjectProgressState extends ConsumerState<ProgressBar> {
  late bool _isComplete;
  late Completion _completion;

  @override
  void initState() {
    _isComplete = widget.completion.isComplete;
    _completion = widget.completion;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(globalTickerProvider, (prev, next) {
      setState(() {
        _completion = _completion.tick();
        if (_completion.isComplete && !_isComplete) {
          _isComplete = true;
        }
      });
    });

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 250),
      child: _isComplete
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
                onPressed: widget.onComplete,
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
                child: LinearProgressIndicator(
                  value: _completion.progress,
                  minHeight: 12,
                  backgroundColor: Colors.transparent,
                ),
              ),
            ),
    );
  }
}
