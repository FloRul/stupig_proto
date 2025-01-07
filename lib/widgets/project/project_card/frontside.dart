﻿import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stupig_proto/systems/event_bus.dart';
import 'package:stupig_proto/systems/game_event.dart';
import 'package:stupig_proto/systems/projects/available_project_notifier.dart';
import 'package:stupig_proto/systems/projects/models.dart';
import 'package:stupig_proto/systems/projects/project_state.dart';
import 'package:stupig_proto/widgets/project/project_card/failure_rate_indicator.dart';
import 'package:stupig_proto/widgets/project/project_card/progress_bar.dart';
import 'package:stupig_proto/widgets/project/project_card/project_title.dart';
import 'package:stupig_proto/widgets/project/project_card/reward.dart';

class ProjectFrontside extends ConsumerWidget {
  const ProjectFrontside({
    super.key,
    required this.project,
    this.completion,
  });
  final Project project;
  final Completion? completion;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ProjectCardTitle(
          title: project.name,
          type: project.type,
        ),
        const SizedBox(height: 16),
        if (completion != null) ...[
          ProgressBar(
            completion: completion!,
            onComplete: () => ref.read(eventBusProvider.notifier).publish(GameEvent.projectCompleted(project: project)),
          ),
          const SizedBox(height: 16),
        ],
        RewardWidget(reward: project.reward),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (completion == null) ...[
              IconButton.filled(
                icon: const Icon(Icons.delete_forever),
                onPressed: () async => ref.read(availableProjectsNotifierProvider.notifier).declineProject(project),
              )
            ],
            FailureRateIndicator(failureRate: project.reward.failRate),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Icon(Icons.memory),
                Text('${project.requiredfocusPoints}'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
