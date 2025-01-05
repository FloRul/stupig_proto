import 'package:flutter/material.dart';

class ProjectCardTitle extends StatelessWidget {
  final String title;
  final bool showFlipIndicator;

  const ProjectCardTitle({
    super.key,
    required this.title,
    this.showFlipIndicator = true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        if (showFlipIndicator)
          const Icon(
            Icons.rotate_right,
            color: Colors.white70,
            size: 16,
          ),
      ],
    );
  }
}
