import 'package:flutter/material.dart';
import 'package:stupig_proto/widgets/debug/group_area.dart';
import 'package:stupig_proto/widgets/debug/debug_panel.dart';
import 'package:stupig_proto/widgets/project/available_projects_view.dart';
import 'package:stupig_proto/widgets/project/active_projects_view.dart';
import 'package:stupig_proto/widgets/resources_panel.dart';
import 'package:stupig_proto/widgets/upgrade_shop.dart';

class MainGamePage extends StatelessWidget {
  const MainGamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
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
                  child: Column(
                    spacing: 16,
                    children: [
                      Expanded(child: ActiveProjects()),
                      Expanded(child: AvailableProjects()),
                    ],
                  ),
                ),
                Expanded(
                  child: GroupArea(
                    title: 'Upgrades',
                    child: UpgradesShop(),
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(height: kToolbarHeight, child: DebugPanel()),
      ],
    );
  }
}
