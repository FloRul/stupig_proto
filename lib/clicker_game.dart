import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stupig_proto/widgets/click_counter.dart';
import 'package:stupig_proto/widgets/projects_view.dart';
import 'widgets/xp_status.dart';
import 'widgets/tap_area.dart';

class ClickerGame extends ConsumerWidget {
  const ClickerGame({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Expanded(
              child: XpStatus(),
            ),
            Spacer(),
            Expanded(child: ClickCounter()),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: ProjectsView(),
            ),
            Expanded(child: TapArea()),
          ],
        ),
      ),
    );
  }
}
