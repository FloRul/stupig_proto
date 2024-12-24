import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stupig_proto/systems/feature_unlock/notifiers.dart';
import 'package:stupig_proto/systems/projects/project_state.dart';
import 'package:stupig_proto/systems/projects/notifiers.dart';

class ActiveProjectCard extends ConsumerStatefulWidget {
  const ActiveProjectCard({super.key, required this.project});
  final ActiveProjectState project;

  @override
  ConsumerState<ActiveProjectCard> createState() => _ActiveProjectCardState();
}

class _ActiveProjectCardState extends ConsumerState<ActiveProjectCard> with TickerProviderStateMixin {
  // Use TickerProviderStateMixin
  late AnimationController _cardFlipController;
  late Animation<double> _cardFlipAnimation;
  late AnimationController _progressController;
  late Animation<double> _progressAnimation;
  bool _isFrontVisible = true;

  @override
  void initState() {
    super.initState();
    _cardFlipController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    _cardFlipAnimation =
        Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(parent: _cardFlipController, curve: Curves.easeInOut));

    _progressController = AnimationController(vsync: this, duration: const Duration(milliseconds: 250));
    _progressAnimation =
        Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(parent: _progressController, curve: Curves.linear));
  }

  @override
  void dispose() {
    _cardFlipController.dispose();
    _progressController.dispose();
    super.dispose();
  }

  void _flipCard() {
    if (_isFrontVisible) {
      _cardFlipController.forward();
    } else {
      _cardFlipController.reverse();
    }
    setState(() {
      _isFrontVisible = !_isFrontVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    var pState = ref.watch(activeProjectNotifierProvider(widget.project));
    var notifier = ref.read(activeProjectNotifierProvider(widget.project).notifier);
    // Update progress directly
    _progressController.value = pState.completion.progress;

    return GestureDetector(
      onTap: _flipCard,
      child: AnimatedBuilder(
        animation: _cardFlipAnimation,
        builder: (context, __) {
          final angle = _cardFlipAnimation.value * pi;
          final transform = Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            ..rotateY(angle);

          return Transform(
            transform: transform,
            alignment: Alignment.center,
            child: angle < pi / 2
                ? Card(
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Expanded(
                                child: Text(
                                  pState.project.name,
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                          AnimatedSwitcher(
                            duration: const Duration(milliseconds: 250),
                            child: pState.completion.isComplete
                                ? IconButton.filled(
                                    icon: const Icon(Icons.check),
                                    onPressed: notifier.complete,
                                  )
                                : TweenAnimationBuilder<double>(
                                    tween: Tween<double>(
                                        begin: _progressAnimation.value,
                                        end: pState.completion.progress), // Animate from current value
                                    duration: const Duration(milliseconds: 250),
                                    curve: Curves.linear,
                                    builder: (context, progress, _) {
                                      return CircularProgressIndicator(
                                        value: progress,
                                        color: Colors.blue,
                                        backgroundColor: Colors.grey[300],
                                      );
                                    },
                                  ),
                          ),
                          const Align(
                            alignment: Alignment.centerRight,
                            child: Icon(
                              Icons.arrow_forward,
                              size: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                : Transform(
                    transform: Matrix4.identity()..rotateY(pi),
                    alignment: Alignment.center,
                    child: Card(
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(pState.project.description),
                              const SizedBox(height: 8),
                              const Align(
                                alignment: Alignment.centerLeft,
                                child: Icon(
                                  Icons.arrow_back,
                                  size: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
          );
        },
      ),
    );
  }
}
