// base_project_card.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stupig_proto/systems/event_bus.dart';
import 'package:stupig_proto/systems/game_event.dart';
import 'package:stupig_proto/systems/projects/models.dart';
import 'package:stupig_proto/systems/projects/project_state.dart';
import 'package:stupig_proto/widgets/common/flippable_card.dart';
import 'package:stupig_proto/widgets/project/project_card/backside.dart';
import 'package:stupig_proto/widgets/project/project_card/progress_bar.dart';
import 'package:stupig_proto/widgets/project/project_card/reward.dart';
import 'package:stupig_proto/widgets/project/project_card/project_title.dart';

class ActiveProjectCard extends ConsumerStatefulWidget {
  final ProjectState pState;

  const ActiveProjectCard({
    super.key,
    required this.pState,
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
    return FlippableCard(
      flipController: _flipController,
      onTap: () => _flipController.flip(),
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: switch (widget.pState.project.type) {
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
            title: widget.pState.project.name,
            type: widget.pState.project.type,
          ),
          const SizedBox(height: 16),
          ProgressBar(
            completion: widget.pState.completion,
            onComplete: () =>
                ref.read(eventBusProvider.notifier).publish(GameEvent.projectCompleted(project: widget.pState.project)),
          ),
          const SizedBox(height: 16),
          RewardWidget(reward: widget.pState.project.reward),
        ],
      ),
      backContent: ProjectCardBack(
        description: widget.pState.project.description,
      ),
    );
  }
}
