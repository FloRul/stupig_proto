import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
          : ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: LinearProgressIndicator(
                value: _cooldown.progress,
                backgroundColor: Colors.white24,
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                minHeight: 8,
              ),
            ),
    );
  }
}
