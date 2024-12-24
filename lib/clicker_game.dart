﻿import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stupig_proto/widgets/common/group_area.dart';
import 'package:stupig_proto/widgets/project/projects_view.dart';
import 'widgets/resources_panel.dart';

class ClickerGame extends ConsumerWidget {
  const ClickerGame({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: Padding(
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
    );
  }
}
