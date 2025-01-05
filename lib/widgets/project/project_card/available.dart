// base_project_card.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stupig_proto/systems/feature_unlock/models.dart';
import 'package:stupig_proto/systems/feature_unlock/notifiers.dart';
import 'package:stupig_proto/systems/projects/models.dart';
import 'package:stupig_proto/widgets/common/flippable_card.dart';
import 'package:stupig_proto/widgets/project/project_card/backside.dart';
import 'package:stupig_proto/widgets/project/project_card/reward.dart';
import 'package:stupig_proto/widgets/project/project_card/project_title.dart';

class AvailableProjectCard extends ConsumerStatefulWidget {
  final Project project;

  const AvailableProjectCard({
    super.key,
    required this.project,
  });

  @override
  ConsumerState<AvailableProjectCard> createState() => AvailableProjectCardState();
}

class AvailableProjectCardState extends ConsumerState<AvailableProjectCard> with SingleTickerProviderStateMixin {
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
    final showRewards = ref.watch(featureUnlockNotifierProvider).features[Feature.showRewards];

    return FlippableCard(
      flipController: _flipController,
      onTap: _flipController.flip,
      frontContent: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ProjectCardTitle(
            title: '??????',
            type: widget.project.type,
          ),
          const SizedBox(height: 16),
          RewardWidget(
            reward: widget.project.reward,
            showRewards: showRewards!,
          ),
        ],
      ),
      backContent: ProjectCardBack(
        description: widget.project.description,
      ),
    );
  }
}
