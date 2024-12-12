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
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: GroupArea(
                title: 'Resources',
                child: Column(
                  children: [
                    XpStatus(),
                    ClickCounter(),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: GroupArea(
                title: 'Projects',
                child: Column(
                  children: [
                    Expanded(flex: 2, child: ProjectsView()),
                    Expanded(child: TapArea()),
                  ],
                ),
              ),
            ),
            Expanded(
              child: GroupArea(
                title: 'Hardware upgrades',
              ),
            )
          ],
        ),
      ),
    );
  }
}

class GroupArea extends StatelessWidget {
  const GroupArea({
    super.key,
    this.title,
    this.child,
  });

  final String? title;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black26,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null) Text(title!, style: const TextStyle(fontSize: 20)),
          Expanded(child: child ?? const Placeholder()),
        ],
      ),
    );
  }
}
