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
                ? CardSide(child: frontContent)
                : Transform(
                    transform: Matrix4.identity()..rotateY(pi),
                    alignment: Alignment.center,
                    child: CardSide(child: backContent),
                  ),
          );
        },
      ),
    );
  }
}

class CardSide extends StatelessWidget {
  const CardSide({
    super.key,
    required this.child,
    this.gradient= const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Colors.green,
      Colors.blue,
    ],
  ),
  });

  final Widget child;
  final Gradient gradient ;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), gradient: gradient),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 12,
            left: 12,
            right: 12,
            bottom: 8,
          ),
          child: child,
        ),
      ),
    );
  }
}
