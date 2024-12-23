import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stupig_proto/systems/projects/project_state.dart';
import 'package:stupig_proto/systems/projects/notifiers.dart';
import 'package:stupig_proto/systems/secondary_resources/notifiers.dart';
import 'package:stupig_proto/utils/constants.dart';
import 'package:stupig_proto/widgets/project/active_project_card.dart';
import 'package:stupig_proto/widgets/project/inactive_project_card.dart';

class InprogressProjects extends ConsumerStatefulWidget {
  const InprogressProjects({super.key});

  @override
  ConsumerState<InprogressProjects> createState() => _InprogressProjectsState();
}

class _InprogressProjectsState extends ConsumerState<InprogressProjects> {
  final GlobalKey<SliverAnimatedGridState> _gridKey = GlobalKey<SliverAnimatedGridState>();
  late final List<ActiveProjectState> _projects = [];

  @override
  Widget build(BuildContext context) {
    var activeProjects = ref.watch(projectsNotifierProvider.select((value) => value.activeProjects));

    // Handle projects list changes
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _updateGrid(activeProjects);
    });

    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'In progress',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
        Expanded(
          child: DragTarget<AvailableProjectState>(
            onWillAcceptWithDetails: (d) => true,
            onAcceptWithDetails: (details) =>
                ref.read(availableProjectNotifierProvider.notifier).startProject(details.data),
            builder: (context, candidateData, rejectedData) {
              return Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: candidateData.isNotEmpty ? Colors.green : Colors.red,
                    width: 2,
                    style: BorderStyle.solid,
                    strokeAlign: BorderSide.strokeAlignCenter,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    final crossAxisCount = (constraints.maxWidth / 250).ceil().toInt();
                    return CustomScrollView(
                      slivers: [
                        SliverAnimatedGrid(
                          key: _gridKey,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: crossAxisCount,
                            crossAxisSpacing: 8.0,
                            mainAxisSpacing: 8.0,
                            childAspectRatio: kCardAspectRatio,
                          ),
                          initialItemCount: _projects.length,
                          itemBuilder: (context, index, animation) {
                            return _buildAnimatedItem(_projects[index], animation);
                          },
                        ),
                      ],
                    );
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildAnimatedItem(ActiveProjectState project, Animation<double> animation) {
    return SlideTransition(
      position: animation.drive(
        Tween<Offset>(
          begin: const Offset(1.0, 0.0),
          end: Offset.zero,
        ),
      ),
      child: FadeTransition(
        opacity: animation,
        child: ActiveProjectCard(project: project),
      ),
    );
  }

  void _updateGrid(List<ActiveProjectState> newProjects) {
    for (var i = 0; i < _projects.length; i++) {
      if (!newProjects.contains(_projects[i])) {
        // Remove animation
        final removedProject = _projects[i];
        _projects.removeAt(i);
        _gridKey.currentState?.removeItem(
          i,
          (context, animation) => _buildRemovedItem(removedProject, animation),
          duration: const Duration(milliseconds: 300),
        );
      }
    }

    for (var i = 0; i < newProjects.length; i++) {
      if (!_projects.contains(newProjects[i])) {
        // Add animation
        _projects.insert(i, newProjects[i]);
        _gridKey.currentState?.insertItem(i);
      }
    }
  }

  Widget _buildRemovedItem(ActiveProjectState project, Animation<double> animation) {
    return SizeTransition(
      sizeFactor: animation,
      child: FadeTransition(
        opacity: animation,
        child: ActiveProjectCard(project: project),
      ),
    );
  }
}

class InactiveProjects extends ConsumerWidget {
  const InactiveProjects({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var availableProjects = ref.watch(availableProjectNotifierProvider);
    return LayoutBuilder(
      builder: (context, constraints) {
        final crossAxisCount = (constraints.maxWidth / 250).ceil().toInt();
        return GridView.builder(
          padding: const EdgeInsets.all(8.0),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: kCardAspectRatio,
          ),
          itemCount: ref.watch(secondaryResourcesNotifierProvider.select((value) => value.availableProjectSlots)),
          itemBuilder: (context, index) {
            return Draggable<AvailableProjectState>(
              feedback: SizedBox(
                width: 150,
                child: AspectRatio(
                  aspectRatio: kCardAspectRatio,
                  child: InactiveProjectCard(aPstate: availableProjects[index]),
                ),
              ),
              data: availableProjects[index],
              child: InactiveProjectCard(aPstate: availableProjects[index]),
            );
          },
        );
      },
    );
  }
}
