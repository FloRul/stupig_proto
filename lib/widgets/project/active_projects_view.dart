import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stupig_proto/systems/projects/project_state.dart';
import 'package:stupig_proto/systems/projects/notifiers.dart';
import 'package:stupig_proto/utils/constants.dart';
import 'package:stupig_proto/widgets/common/glassmorphism_container.dart';
import 'package:stupig_proto/widgets/project/project_card/card.dart';

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
    var activeProjects = ref.watch(projectsNotifierProvider).activeProjects;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _updateGrid(activeProjects);
    });

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: GlassmorphicContainer(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'In progress',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white.withValues(alpha: 0.9),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: DragTarget<AvailableProjectState>(
            onWillAcceptWithDetails: (d) => true,
            onAcceptWithDetails: (details) async =>
                ref.read(availableProjectsNotifierProvider.notifier).startProject(details.data),
            builder: (context, candidateData, rejectedData) {
              return GlassmorphicContainer(
                isHighlighted: candidateData.isNotEmpty,
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    final crossAxisCount = (constraints.maxWidth / 250).ceil().toInt();
                    return CustomScrollView(
                      slivers: [
                        SliverPadding(
                          padding: const EdgeInsets.all(0),
                          sliver: SliverAnimatedGrid(
                            key: _gridKey,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: crossAxisCount,
                              crossAxisSpacing: 16.0,
                              mainAxisSpacing: 16.0,
                              childAspectRatio: kCardAspectRatio,
                            ),
                            initialItemCount: _projects.length,
                            itemBuilder: (context, index, animation) {
                              return _buildAnimatedItem(_projects[index], animation);
                            },
                          ),
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
    return FadeTransition(
      opacity: animation,
      child: ActiveProjectCard(project: project),
    );
  }
}
