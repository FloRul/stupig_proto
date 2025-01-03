import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stupig_proto/systems/projects/project_state.dart';
import 'package:stupig_proto/systems/projects/notifiers.dart';
import 'package:stupig_proto/utils/constants.dart';
import 'package:stupig_proto/widgets/common/glassmorphism_container.dart';
import 'package:stupig_proto/widgets/project/project_card/available.dart';

class AvailableProjects extends ConsumerWidget {
  const AvailableProjects({super.key}); 

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var availableProjects = ref.watch(availableProjectsNotifierProvider);
    return GlassmorphicContainer(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          childAspectRatio: kCardAspectRatio,
        ),
        itemCount: availableProjects.length,
        itemBuilder: (context, index) {
          return LayoutBuilder(builder: (context, constraints) {
            return Draggable<AvailableProjectState>(
              feedback: SizedBox(
                width: constraints.maxWidth,
                height: constraints.maxHeight,
                child: AvailableProjectCard(aPstate: availableProjects[index]),
              ),
              data: availableProjects[index],
              child: AvailableProjectCard(aPstate: availableProjects[index]),
            );
          });
        },
      ),
    );
  }
}
