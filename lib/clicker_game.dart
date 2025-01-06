import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stupig_proto/systems/event_bus.dart';
import 'package:stupig_proto/widgets/progression/booster_opening_dialog.dart';
import 'package:stupig_proto/widgets/progression/progression_page.dart';
import 'package:stupig_proto/widgets/main_game_page.dart';

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
                MainGamePage(),
                ProgressionPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
