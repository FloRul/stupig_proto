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
        const SizedBox(width: 8),
        Tooltip(
          message: switch (type) {
            ProjectType.learning => 'Learning\nNo money reward',
            ProjectType.design => 'Design project',
            ProjectType.implementation => 'Implementation project',
            ProjectType.optimization =>
              'Optimization project\nNo reward\nReduces design and implementation failure chances',
          },
          child: switch (type) {
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
          },
        )
      ],
    );
  }
}
