﻿// base_project_card.dart
import 'package:flutter/material.dart';

class ProjectCardBack extends StatelessWidget {
  final String description;

  const ProjectCardBack({
    super.key,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          children: const [
            Text(
              'Description',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Icon(
              Icons.rotate_right,
              color: Colors.white70,
              size: 16,
            ),
          ],
        ),
        const SizedBox(height: 16),
        Expanded(
          child: SingleChildScrollView(
            child: Text(
              description,
              style: const TextStyle(
                color: Colors.white,
                height: 1.5,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
