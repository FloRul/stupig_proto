import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stupig_proto/widgets/active_projects_list.dart';
import 'package:stupig_proto/widgets/click_counter.dart';
import 'package:stupig_proto/widgets/inactive_projects_list.dart';
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Placeholder(), // First section
                  ),
                  Expanded(
                    child: InactiveProjectsList(), // Second section
                  ),
                ],
              ),
            ),
            Expanded(child: TapArea()),
          ],
        ),
      ),
    );
  }
}
