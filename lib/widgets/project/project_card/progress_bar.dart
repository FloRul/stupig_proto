import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stupig_proto/systems/global_ticker.dart/global_ticker.dart';
import 'package:stupig_proto/systems/projects/project_state.dart';

class ProgressBar extends ConsumerStatefulWidget {
  final Completion progress;
  final VoidCallback? onComplete;

  const ProgressBar({
    super.key,
    required this.progress,
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
    _isComplete = widget.progress.isComplete;
    _completion = widget.progress;
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
          ? FilledButton.icon(
              onPressed: widget.onComplete,
              icon: const Icon(Icons.check_circle),
              label: const Text('Complete'),
            )
          : ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: LinearProgressIndicator(
                value: _completion.progress,
                backgroundColor: Colors.white24,
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                minHeight: 8,
              ),
            ),
    );
  }
}
