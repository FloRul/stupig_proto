import 'dart:math';
import 'package:flutter/material.dart';

class FlipCardController {
  late AnimationController controller;
  bool isFrontVisible = true;

  void initialize(TickerProvider vsync) {
    controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: vsync,
    );
  }

  void dispose() {
    controller.dispose();
  }

  void flip() {
    if (isFrontVisible) {
      controller.forward();
    } else {
      controller.reverse();
    }
    isFrontVisible = !isFrontVisible;
  }
}

class FlippableCard extends StatelessWidget {
  final FlipCardController flipController;
  final Widget frontContent;
  final Widget backContent;
  final VoidCallback? onTap;

  const FlippableCard({
    super.key,
    required this.flipController,
    required this.frontContent,
    required this.backContent,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedBuilder(
        animation: flipController.controller,
        builder: (context, __) {
          final angle = flipController.controller.value * pi;
          final transform = Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            ..rotateY(angle);

          return Transform(
            transform: transform,
            alignment: Alignment.center,
            child: angle < pi / 2
                ? _buildCardSide(frontContent)
                : Transform(
                    transform: Matrix4.identity()..rotateY(pi),
                    alignment: Alignment.center,
                    child: _buildCardSide(backContent),
                  ),
          );
        },
      ),
    );
  }

  Widget _buildCardSide(Widget content) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color((Random().nextDouble() * 0xFFFFFF).toInt() | 0xFF000000),
              Color((Random().nextDouble() * 0xFFFFFF).toInt() | 0xFF000000),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 12,
            left: 12,
            right: 12,
            bottom: 8,
          ),
          child: content,
        ),
      ),
    );
  }
}
