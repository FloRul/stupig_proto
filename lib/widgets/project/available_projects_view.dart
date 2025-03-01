﻿import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stupig_proto/systems/projects/models.dart';
import 'package:stupig_proto/systems/projects/available_project_notifier.dart';
import 'package:stupig_proto/utils/constants.dart';
import 'package:stupig_proto/widgets/common/animated_icon_progress_bar.dart';
import 'package:stupig_proto/widgets/common/glassmorphism_container.dart';
import 'package:stupig_proto/widgets/debug/group_area.dart';
import 'package:stupig_proto/widgets/project/project_card/project_card.dart';

class ProjectCooldownCard extends ConsumerWidget {
  final String projectId;

  const ProjectCooldownCard({
    required this.projectId,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final progress = ref.watch(availableProjectsNotifierProvider.select(
      (state) => state.cooldowns[projectId]?.progress ?? 10,
    ));

    return GlassmorphicContainer(
      child: Center(
        child: Column(
          spacing:8,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.hourglass_empty),
            TweenAnimationBuilder<double>(
                tween: Tween<double>(begin: 0, end: progress),
                duration: const Duration(milliseconds: kTickInterval),
                curve: Curves.linear,
                builder: (context, animatedProgress, child) {
                  return CircularProgressIndicator(
                    value: animatedProgress,
                    backgroundColor: Colors.transparent,
                  );
                }),
            Text('${(progress * 100).toInt()}%'),
          ],
        ),
      ),
    );
  }
}

class EmptyProjectSlot extends StatelessWidget {
  const EmptyProjectSlot({super.key});

  @override
  Widget build(BuildContext context) {
    return const GlassmorphicContainer(
      child: Center(
        child: Icon(
          Icons.add_circle_outline,
          color: Colors.white24,
        ),
      ),
    );
  }
}

class AvailableProjects extends ConsumerWidget {
  const AvailableProjects({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(availableProjectsNotifierProvider);

    // Create a list of all slots - both active projects and cooldown slots
    final allSlots = [
      ...state.projects.map((p) => ProjectSlot(project: p)),
      ...state.cooldowns.keys.map((id) => ProjectSlot(cooldownId: id)),
    ];

    // Sort slots to maintain consistent ordering
    allSlots.sort((a, b) => (a.project?.id ?? a.cooldownId!).compareTo(b.project?.id ?? b.cooldownId!));

    return GroupArea(
      title: 'Available Projects',
      trailing: const AnimatedIconProgressBar(
        icon: Icons.clear,
        totalIcons: 3,
        progress: 1,
      ),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          childAspectRatio: kCardAspectRatio,
        ),
        // Add 1 to itemCount for the Add Slot card
        itemCount: allSlots.length,
        itemBuilder: (context, index) {
          final slot = allSlots[index];
          if (slot.project != null) {
            return LayoutBuilder(
              builder: (context, constraints) {
                return Draggable<Project>(
                  feedback: SizedBox(
                    width: constraints.maxWidth,
                    height: constraints.maxHeight,
                    child: ProjectCard(
                      project: slot.project!,
                    ),
                  ),
                  data: slot.project,
                  onDragStarted: () {
                    // Optional: Add any drag start animations or effects
                  },
                  onDraggableCanceled: (_, __) {
                    // Optional: Handle drag cancel
                  },
                  childWhenDragging: const EmptyProjectSlot(),
                  child: ProjectCard(
                    project: slot.project!,
                  ),
                );
              },
            );
          } else {
            return ProjectCooldownCard(projectId: slot.cooldownId!);
          }
        },
      ),
    );
  }
}

// Helper class to manage slot state
class ProjectSlot {
  final Project? project;
  final String? cooldownId;

  ProjectSlot({
    this.project,
    this.cooldownId,
  }) : assert(project != null || cooldownId != null);
}

class AddSlotCard extends StatelessWidget {
  final VoidCallback onTap;

  const AddSlotCard({
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const GlassmorphicContainer(
        child: Center(
          child: Column(
            spacing: 8,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.add_circle_outline,
                color: Colors.white70,
                size: 32,
              ),
              Text(
                'Add Slot',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
