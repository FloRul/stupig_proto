import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stupig_proto/systems/projects/project_state.dart';
import 'package:stupig_proto/utils/constants.dart';

class ParticleModel {
  Offset position;
  Color color;
  double speed;
  double theta;
  double size;

  ParticleModel({
    required this.position,
    required this.color,
    required this.speed,
    required this.theta,
    required this.size,
  });
}

class ParticleWidget extends StatefulWidget {
  final VoidCallback onAnimationComplete;
  final Offset buttonPosition;
  final Size buttonSize;

  const ParticleWidget({
    super.key,
    required this.onAnimationComplete,
    required this.buttonPosition,
    required this.buttonSize,
  });

  @override
  State<ParticleWidget> createState() => _ParticleWidgetState();
}

class _ParticleWidgetState extends State<ParticleWidget> with SingleTickerProviderStateMixin {
  final List<ParticleModel> particles = [];
  late AnimationController _controller;
  final Random random = Random();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        widget.onAnimationComplete();
      }
    });

    // Create particles
    for (int i = 0; i < 20; i++) {
      // Calculate random starting position within the button bounds
      final startX = random.nextDouble() * widget.buttonSize.width;
      final startY = random.nextDouble() * widget.buttonSize.height;

      particles.add(
        ParticleModel(
          position: Offset(startX, startY),
          color: Color((random.nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
          speed: 2.0 + random.nextDouble() * 2.0,
          theta: random.nextDouble() * 2 * pi,
          size: 4 + random.nextDouble() * 4,
        ),
      );
    }

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return CustomPaint(
          size: const Size(200, 200),
          painter: ParticlePainter(
            particles: particles,
            progress: _controller.value,
          ),
        );
      },
    );
  }
}

class ParticlePainter extends CustomPainter {
  final List<ParticleModel> particles;
  final double progress;

  ParticlePainter({
    required this.particles,
    required this.progress,
  });

  @override
  void paint(Canvas canvas, Size size) {
    for (var particle in particles) {
      final paint = Paint()..color = particle.color.withOpacity(1 - progress);

      // Calculate position based on time
      final dx = particle.speed * progress * cos(particle.theta);
      final dy = particle.speed * progress * sin(particle.theta) + 2 * progress * progress; // Add gravity effect

      final position = particle.position.translate(
        dx * size.width / 2,
        dy * size.height / 2,
      );

      canvas.drawCircle(position, particle.size * (1 - progress), paint);
    }
  }

  @override
  bool shouldRepaint(ParticlePainter oldDelegate) => true;
}

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
    return Stack(
      alignment: Alignment.center,
      children: [
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 250),
          child: completion.isComplete
              ? completionResult != null
                  ? FilledButton.icon(
                      style: FilledButton.styleFrom(
                        backgroundColor: Colors.transparent,
                      ),
                      onPressed: () {
                        final RenderBox renderBox = context.findRenderObject() as RenderBox;
                        final buttonPosition = renderBox.localToGlobal(Offset.zero);
                        final buttonSize = renderBox.size;

                        showDialog(
                          context: context,
                          barrierColor: Colors.transparent,
                          builder: (context) => Stack(
                            children: [
                              Positioned(
                                left: buttonPosition.dx,
                                top: buttonPosition.dy,
                                child: ParticleWidget(
                                  buttonPosition: buttonPosition,
                                  buttonSize: buttonSize,
                                  onAnimationComplete: () {
                                    Navigator.of(context).pop();
                                    onceCompleted();
                                  },
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      icon: Icon(
                        completionResult! ? Icons.check_circle : Icons.error_outline,
                        color: completionResult! ? Colors.green : Colors.red,
                      ),
                      label: Text(
                        completionResult! ? 'Complete' : 'Discard',
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
                      },
                    ),
                  ),
                ),
        ),
      ],
    );
  }
}
