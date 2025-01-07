import 'package:flutter/material.dart';

class AnimatedIconProgressBar extends StatefulWidget {
  final int totalIcons;
  final double progress; // Progress from 0.0 to 1.0
  final IconData icon;
  final Color filledColor;
  final Color unfilledColor;
  final double size;
  final Duration duration; // Animation duration

  const AnimatedIconProgressBar({
    super.key,
    required this.totalIcons,
    required this.progress,
    required this.icon,
    this.filledColor = Colors.amber,
    this.unfilledColor = Colors.grey,
    this.size = 24.0,
    this.duration = const Duration(milliseconds: 1500),
  });

  @override
  State<AnimatedIconProgressBar> createState() => _AnimatedIconProgressBarState();
}

class _AnimatedIconProgressBarState extends State<AnimatedIconProgressBar> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );
    _animation = Tween<double>(
      begin: 0,
      end: widget.progress,
    ).animate(_controller);
    _controller.forward();
  }

  @override
  void didUpdateWidget(AnimatedIconProgressBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.progress != widget.progress) {
      _animation = Tween<double>(
        begin: oldWidget.progress,
        end: widget.progress,
      ).animate(_controller);
      _controller.forward(from: 0);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(widget.totalIcons, (index) {
            final iconProgress = _animation.value * widget.totalIcons;
            if (index + 1 <= iconProgress) {
              // Fully filled icon
              return Icon(
                widget.icon,
                color: widget.filledColor,
                size: widget.size,
              );
            } else if (index < iconProgress) {
              // Partially filled icon using ShaderMask
              final fillPercentage = (iconProgress - index);
              return ShaderMask(
                shaderCallback: (bounds) {
                  return LinearGradient(
                    colors: [
                      widget.filledColor,
                      widget.unfilledColor,
                    ],
                    stops: [fillPercentage, fillPercentage],
                  ).createShader(bounds);
                },
                child: Icon(
                  widget.icon,
                  color: Colors.white,
                  size: widget.size,
                ),
              );
            } else {
              // Unfilled icon
              return Icon(
                widget.icon,
                color: widget.unfilledColor,
                size: widget.size,
              );
            }
          }),
        );
      },
    );
  }
}
