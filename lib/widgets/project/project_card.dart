// base_project_card.dart
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stupig_proto/systems/feature_unlock/notifiers.dart';
import 'package:stupig_proto/systems/projects/notifiers.dart';
import 'package:stupig_proto/systems/projects/project_state.dart';
import 'package:stupig_proto/widgets/project/reward.dart';

class FlipCardController {
  late AnimationController controller;
  bool isFrontVisible = true;

  void initialize(TickerProvider vsync) {
    controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: vsync,
    );
  }

  void dispose() {
    controller.dispose();
  }

  void flip() {
    if (isFrontVisible) {
      controller.forward();
    } else {
      controller.reverse();
    }
    isFrontVisible = !isFrontVisible;
  }
}

class BaseProjectCard extends StatelessWidget {
  final FlipCardController flipController;
  final Widget frontContent;
  final Widget backContent;
  final VoidCallback? onTap;

  const BaseProjectCard({
    super.key,
    required this.flipController,
    required this.frontContent,
    required this.backContent,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedBuilder(
        animation: flipController.controller,
        builder: (context, __) {
          final angle = flipController.controller.value * pi;
          final transform = Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            ..rotateY(angle);

          return Transform(
            transform: transform,
            alignment: Alignment.center,
            child: angle < pi / 2
                ? _buildCardSide(frontContent)
                : Transform(
                    transform: Matrix4.identity()..rotateY(pi),
                    alignment: Alignment.center,
                    child: _buildCardSide(backContent),
                  ),
          );
        },
      ),
    );
  }

  Widget _buildCardSide(Widget content) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF7C3AED), Color(0xFF2563EB)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: content,
        ),
      ),
    );
  }
}

// project_card_components.dart
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
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        if (showFlipIndicator)
          const Row(
            children: [
              Text(
                'Flip',
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
    );
  }
}

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

    return BaseProjectCard(
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
class InactiveProjectCard extends ConsumerStatefulWidget {
  final AvailableProjectState aPstate;

  const InactiveProjectCard({
    super.key,
    required this.aPstate,
  });

  @override
  ConsumerState<InactiveProjectCard> createState() => _InactiveProjectCardState();
}

class _InactiveProjectCardState extends ConsumerState<InactiveProjectCard> with SingleTickerProviderStateMixin {
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

    return BaseProjectCard(
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
