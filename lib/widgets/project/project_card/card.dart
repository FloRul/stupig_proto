// base_project_card.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stupig_proto/systems/feature_unlock/notifiers.dart';
import 'package:stupig_proto/systems/projects/notifiers.dart';
import 'package:stupig_proto/systems/projects/project_state.dart';
import 'package:stupig_proto/widgets/common/flippable_card.dart';
import 'package:stupig_proto/widgets/project/project_card/reward.dart';
import 'package:stupig_proto/widgets/project/project_card/title.dart';

class ProjectProgress extends StatelessWidget {
  final double progress;
  final bool isComplete;
  final VoidCallback? onComplete;

  const ProjectProgress({
    super.key,
    required this.progress,
    required this.isComplete,
    this.onComplete,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 250),
      child: isComplete
          ? FilledButton.icon(
              onPressed: onComplete,
              icon: const Icon(Icons.check_circle),
              label: const Text('Complete'),
            )
          : ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: LinearProgressIndicator(
                value: progress,
                backgroundColor: Colors.white24,
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                minHeight: 8,
              ),
            ),
    );
  }
}

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
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Description',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Row(
              children: [
                Text(
                  'Back',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),
                SizedBox(width: 4),
                Icon(
                  Icons.rotate_right,
                  color: Colors.white70,
                  size: 16,
                ),
              ],
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

// active_project_card.dart
class ActiveProjectCard extends ConsumerStatefulWidget {
  final ActiveProjectState project;

  const ActiveProjectCard({
    super.key,
    required this.project,
  });

  @override
  ConsumerState<ActiveProjectCard> createState() => _ActiveProjectCardState();
}

class _ActiveProjectCardState extends ConsumerState<ActiveProjectCard> with TickerProviderStateMixin {
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
    final pState = ref.watch(activeProjectNotifierProvider(widget.project));
    final notifier = ref.read(activeProjectNotifierProvider(widget.project).notifier);

    return FlippableCard(
      flipController: _flipController,
      onTap: () => _flipController.flip(),
      frontContent: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ProjectCardTitle(title: pState.project.name),
          const SizedBox(height: 16),
          ProjectProgress(
            progress: pState.completion.progress,
            isComplete: pState.completion.isComplete,
            onComplete: notifier.complete,
          ),
          const SizedBox(height: 16),
          RewardWidget(reward: pState.project.reward),
        ],
      ),
      backContent: ProjectCardBack(
        description: pState.project.description,
      ),
    );
  }
}

// inactive_project_card.dart
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
