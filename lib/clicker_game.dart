import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stupig_proto/systems/event_bus.dart';
import 'package:stupig_proto/widgets/progression/booster_opening_dialog.dart';
import 'package:stupig_proto/widgets/common/group_area.dart';
import 'package:stupig_proto/widgets/debug/debug_panel.dart';
import 'package:stupig_proto/widgets/progression/progression_page.dart';
import 'package:stupig_proto/widgets/project/projects_view.dart';
import 'widgets/resources_panel.dart';

enum GamePage {
  main,
  progression;
}

class ClickerGame extends ConsumerStatefulWidget {
  const ClickerGame({super.key});

  @override
  ConsumerState<ClickerGame> createState() => _ClickerGameState();
}

class _ClickerGameState extends ConsumerState<ClickerGame> {
  final PageController _pageController = PageController();
  GamePage _currentPage = GamePage.main;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _navigateToPage(GamePage page) {
    setState(() {
      _currentPage = page;
      _pageController.animateToPage(
        page.index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
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

    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            selectedIndex: _currentPage.index,
            onDestinationSelected: (value) => _navigateToPage(GamePage.values[value]),
            destinations: [
              NavigationRailDestination(
                indicatorShape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                icon: const Icon(Icons.home),
                label: const Text('Main'),
              ),
              NavigationRailDestination(
                indicatorShape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                icon: const Icon(Icons.assessment),
                label: const Text('Progression'),
              ),
            ],
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                MainGameView(),
                ProgressionPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MainGameView extends StatelessWidget {
  const MainGameView({super.key});

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
    );
  }
}
