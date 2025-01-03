// base_project_card.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stupig_proto/systems/feature_unlock/notifiers.dart';
import 'package:stupig_proto/systems/projects/notifiers.dart';
import 'package:stupig_proto/systems/projects/project_state.dart';
import 'package:stupig_proto/widgets/common/flippable_card.dart';
import 'package:stupig_proto/widgets/project/project_card/card.dart';
import 'package:stupig_proto/widgets/project/project_card/reward.dart';
import 'package:stupig_proto/widgets/project/project_card/title.dart';

class AvailableProjectCard extends ConsumerStatefulWidget {
  final AvailableProjectState aPstate;

  const AvailableProjectCard({
    super.key,
    required this.aPstate,
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
    final aPstate = ref.watch(availableProjectNotifierProvider(widget.aPstate));
    final showRewards = ref.watch(featureUnlockNotifierProvider.select((value) => value.showRewards));

    return FlippableCard(
      flipController: _flipController,
      onTap: aPstate.isAvailable ? () => _flipController.flip() : null,
      frontContent: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ProjectCardTitle(
            title: aPstate.isAvailable ? aPstate.project.name : '??????',
            showFlipIndicator: aPstate.isAvailable,
          ),
          const SizedBox(height: 16),
          if (!aPstate.isAvailable)
            ProjectProgress(
              progress: aPstate.cooldown.progress,
              isComplete: false,
            ),
          const SizedBox(height: 16),
          RewardWidget(
            reward: aPstate.project.reward,
            showRewards: showRewards,
          ),
        ],
      ),
      backContent: ProjectCardBack(
        description: aPstate.project.description,
      ),
    );
  }
}
