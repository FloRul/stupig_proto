import 'package:flutter/material.dart';
import 'package:stupig_proto/systems/projects/models.dart';

class ProjectCardTitle extends StatelessWidget {
  final String title;
  final ProjectType type;
  const ProjectCardTitle({
    super.key,
    required this.title,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          overflow: TextOverflow.ellipsis,
        ),
        switch (type) {
          ProjectType.learning => const Icon(
              Icons.school,
              color: Colors.white,
            ),
          ProjectType.design => const Icon(
              Icons.design_services,
              color: Colors.white,
            ),
          ProjectType.implementation => const Icon(
              Icons.build,
              color: Colors.white,
            ),
          ProjectType.optimization => const Icon(
              Icons.flash_on,
              color: Colors.white,
            ),
        }
      ],
    );
  }
}
