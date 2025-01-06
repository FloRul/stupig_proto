// base_project_card.dart
import 'package:flutter/material.dart';
import 'package:stupig_proto/systems/projects/models.dart';
import 'package:stupig_proto/widgets/common/flippable_card.dart';
import 'package:stupig_proto/widgets/project/project_card/backside.dart';
import 'package:stupig_proto/widgets/project/project_card/reward.dart';
import 'package:stupig_proto/widgets/project/project_card/project_title.dart';

class AvailableProjectCard extends StatefulWidget {
  final Project project;

  const AvailableProjectCard({
    super.key,
    required this.project,
  });

  @override
  State<AvailableProjectCard> createState() => AvailableProjectCardState();
}

class AvailableProjectCardState extends State<AvailableProjectCard> with SingleTickerProviderStateMixin {
  final _flipController = FlipCardController();

  @override
  void initState() {
    super.initState();
    _flipController.initialize(this);
  }

  @override
  void dispose() {
    _flipController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlippableCard(
      flipController: _flipController,
      onTap: _flipController.flip,
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: switch (widget.project.type) {
          ProjectType.learning => [Colors.green.shade200, Colors.green.shade400],
          ProjectType.design => [Colors.blue.shade200, Colors.blue.shade400],
          ProjectType.implementation => [Colors.purple.shade200, Colors.purple.shade400],
          ProjectType.optimization => [Colors.orange.shade200, Colors.orange.shade400],
        },
      ),
      frontContent: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ProjectCardTitle(
            title: widget.project.name,
            type: widget.project.type,
          ),
          const SizedBox(height: 16),
          RewardWidget(
            reward: widget.project.reward,
          ),
        ],
      ),
      backContent: ProjectCardBack(
        description: widget.project.description,
      ),
    );
  }
}
