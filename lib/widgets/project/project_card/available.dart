// base_project_card.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stupig_proto/systems/feature_unlock/notifiers.dart';
import 'package:stupig_proto/systems/projects/models.dart';
import 'package:stupig_proto/systems/projects/project_state.dart';
import 'package:stupig_proto/widgets/common/flippable_card.dart';
import 'package:stupig_proto/widgets/project/project_card/card.dart';
import 'package:stupig_proto/widgets/project/project_card/progress.dart';
import 'package:stupig_proto/widgets/project/project_card/reward.dart';
import 'package:stupig_proto/widgets/project/project_card/title.dart';

class AvailableProjectCard extends ConsumerStatefulWidget {
  final Project project;
  final Completion cooldown;
  final bool canFlip;

  const AvailableProjectCard({
    super.key,
    required this.project,
    required this.cooldown,
    required this.canFlip,
  });

  @override
  ConsumerState<AvailableProjectCard> createState() => _InactiveProjectCardState();
}

class _InactiveProjectCardState extends ConsumerState<AvailableProjectCard> with SingleTickerProviderStateMixin {
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
    // final aPstate = ref.watch(availableProjectNotifierProvider(widget.aPstate));
    final showRewards = ref.watch(featureUnlockNotifierProvider.select((value) => value.showRewards));

    return FlippableCard(
      flipController: _flipController,
      onTap: widget.canFlip ? () => _flipController.flip() : null,
      frontContent: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ProjectCardTitle(
            title: widget.canFlip ? widget.project.name : '??????',
            showFlipIndicator: widget.canFlip,
          ),
          const SizedBox(height: 16),
          if (!widget.canFlip)
            ProjectProgress(
              progress: widget.cooldown,
            ),
          const SizedBox(height: 16),
          RewardWidget(
            reward: widget.project.reward,
            showRewards: showRewards,
          ),
        ],
      ),
      backContent: ProjectCardBack(
        description: widget.project.description,
      ),
    );
  }
}
