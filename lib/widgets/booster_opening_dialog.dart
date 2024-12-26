// First, let's create the event class
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BoosterPackEvent {
  final List<String> cards; // Or your card model
  BoosterPackEvent(this.cards);
}

// Create the dialog widget
class BoosterPackDialog extends ConsumerStatefulWidget {
  final List<String> cards;

  const BoosterPackDialog({
    super.key,
    required this.cards,
  });

  @override
  ConsumerState<BoosterPackDialog> createState() => _BoosterPackDialogState();
}

class _BoosterPackDialogState extends ConsumerState<BoosterPackDialog> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _rotateAnimation;
  bool _isOpened = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );

    _scaleAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.5, curve: Curves.easeOut),
      ),
    );

    _rotateAnimation = Tween<double>(
      begin: 0.0,
      end: 2 * pi,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.5, 1.0, curve: Curves.easeInOut),
      ),
    );

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() => _isOpened = true);
      }
    });

    // Start animation after build
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Transform.scale(
            scale: _scaleAnimation.value,
            child: Transform.rotate(
              angle: _rotateAnimation.value,
              child: _isOpened ? _buildOpenedPack() : _buildClosedPack(),
            ),
          );
        },
      ),
    );
  }

  Widget _buildClosedPack() {
    return GestureDetector(
      onTap: () {
        if (!_controller.isAnimating) {
          _controller.forward();
        }
      },
      child: Container(
        width: 300,
        height: 400,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              spreadRadius: 2,
            ),
          ],
        ),
        child: const Center(
          child: Text(
            'Tap to Open!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildOpenedPack() {
    return Container(
      width: 300,
      height: 400,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...widget.cards.map((card) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(card), // Replace with your card widget
              )),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }
}
