import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:stupig_proto/systems/global_ticker.dart/global_ticker.dart';
import 'package:stupig_proto/systems/projects/project_state.dart';

class CooldownBar extends ConsumerStatefulWidget {
  final Completion cooldown;
  final VoidCallback? onComplete;

  const CooldownBar({
    super.key,
    required this.cooldown,
    this.onComplete,
  });

  @override
  ConsumerState<CooldownBar> createState() => _ProjectProgressState();
}

class _ProjectProgressState extends ConsumerState<CooldownBar> {
  late bool _isComplete;
  late Completion _cooldown;

  @override
  void initState() {
    _isComplete = widget.cooldown.isComplete;
    _cooldown = widget.cooldown;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(globalTickerProvider, (prev, next) {
      setState(() {
        _cooldown = _cooldown.tick();
        if (_cooldown.isComplete && !_isComplete) {
          _isComplete = true;
          widget.onComplete?.call();
        }
      });
    });

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 250),
      child: _isComplete
          ? const Icon(
              Icons.open_with,
              color: Colors.white,
            )
          : Stack(
              alignment: Alignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: LinearProgressIndicator(
                    value: _cooldown.progress,
                    backgroundColor: Colors.white24,
                    valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                    minHeight: 8,
                  ),
                ),
                const Icon(
                  Icons.hourglass_empty,
                  color: Colors.white,
                  size: 16,
                )
                    .animate(
                      onPlay: (controller) => controller.repeat(),
                    )
                    .rotate(
                      duration: const Duration(seconds: 2),
                      begin: 0,
                      end: 1,
                    ),
              ],
            ),
    );
  }
}
