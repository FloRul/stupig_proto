import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stupig_proto/systems/event_bus.dart';
import 'package:stupig_proto/widgets/progression/booster_opening_dialog.dart';
import 'package:stupig_proto/widgets/common/group_area.dart';
import 'package:stupig_proto/widgets/debug/debug_panel.dart';
import 'package:stupig_proto/widgets/project/projects_view.dart';
import 'widgets/resources_panel.dart';

class ClickerGame extends ConsumerWidget {
  const ClickerGame({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(
      eventBusProvider,
      (previous, next) {
        next.whenData(
          (event) => event.maybeMap(
            levelUp: (_) => showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) => const BoosterPackDialog(),
            ),
            orElse: () {},
          ),
        );
      },
    );
    return const Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: GroupArea(
                      title: 'Resources',
                      child: ResourcesView(),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: GroupArea(
                      title: 'Projects',
                      child: Column(
                        children: [
                          Expanded(flex: 2, child: InprogressProjects()),
                          SizedBox(height: 16.0),
                          Expanded(child: InactiveProjects()),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: GroupArea(
                      title: 'Upgrades',
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: kToolbarHeight, child: DebugPanel()),
        ],
      ),
    );
  }
}
