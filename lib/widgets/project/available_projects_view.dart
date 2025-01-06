import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stupig_proto/systems/event_bus.dart';
import 'package:stupig_proto/systems/game_event.dart';
import 'package:stupig_proto/systems/projects/models.dart';
import 'package:stupig_proto/systems/projects/available_project_notifier.dart';
import 'package:stupig_proto/utils/constants.dart';
import 'package:stupig_proto/widgets/common/glassmorphism_container.dart';
import 'package:stupig_proto/widgets/project/project_card/available.dart';

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.hourglass_empty),
            const SizedBox(height: 8),
            CircularProgressIndicator(
              value: progress,
            ),
            const SizedBox(height: 8),
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

    return GlassmorphicContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Available',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white.withValues(alpha: 0.9),
            ),
            textAlign: TextAlign.left,
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                childAspectRatio: kCardAspectRatio,
              ),
              // Add 1 to itemCount for the Add Slot card
              itemCount: allSlots.length + 1,
              itemBuilder: (context, index) {
                // If it's the last item, show the Add Slot card
                if (index == allSlots.length) {
                  return AddSlotCard(
                    onTap: () {
                      ref
                          .read(eventBusProvider.notifier)
                          .publish(const GameEvent.purchase(type: PurchaseType.availableSlot));
                    },
                  );
                }

                final slot = allSlots[index];

                if (slot.project != null) {
                  return LayoutBuilder(
                    builder: (context, constraints) {
                      return Draggable<Project>(
                        feedback: SizedBox(
                          width: constraints.maxWidth,
                          height: constraints.maxHeight,
                          child: AvailableProjectCard(
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
                        child: AvailableProjectCard(
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
          ),
        ],
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.add_circle_outline,
                color: Colors.white70,
                size: 32,
              ),
              SizedBox(height: 8),
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
