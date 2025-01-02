import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stupig_proto/systems/progression/models.dart';
import 'package:stupig_proto/systems/progression/notifiers.dart';
import 'package:stupig_proto/utils/constants.dart';
import 'package:stupig_proto/widgets/common/glassmorphism_container.dart';
import 'package:stupig_proto/widgets/progression/flashcard_widget.dart';

class ProgressionPage extends ConsumerStatefulWidget {
  const ProgressionPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProgressionPageState();
}

class _ProgressionPageState extends ConsumerState<ProgressionPage> {
  Subtheme? selectedSubtheme;

  @override
  void initState() {
    selectedSubtheme = null;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: ThemesList(
                onSelectedSubtheme: (subtheme) {
                  setState(
                    () {
                      selectedSubtheme = subtheme;
                    },
                  );
                },
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              flex: 3,
              child: SubthemeDetails(
                subtheme: selectedSubtheme,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ThemesList extends ConsumerWidget {
  const ThemesList({
    super.key,
    required this.onSelectedSubtheme,
  });
  final void Function(Subtheme) onSelectedSubtheme;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var themes = ref.watch(themesProvider).value!;
    return GlassmorphicContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ProgressionHeader(),
          const Divider(),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: themes.map((theme) {
                return ThemeCard(
                  theme: theme,
                  onTap: onSelectedSubtheme,
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class ProgressionHeader extends ConsumerWidget {
  const ProgressionHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var progress = ref.watch(themesProvider).value!.fold<(int, int)>((0, 0), (previousValue, element) {
      return (previousValue.$1 + element.progress.$1, previousValue.$2 + element.progress.$2);
    });
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Progression',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            ProgressCard(
              title: 'Total Progress',
              value: '${(progress.$1 / progress.$2).toStringAsFixed(2)}%',
              color: Colors.blue,
            ),
            const SizedBox(width: 16),
            ProgressCard(
              title: 'Unlocked Concepts',
              value: '${progress.$1}/${progress.$2}',
              color: Colors.green,
            ),
          ],
        ),
      ],
    );
  }
}

class ProgressCard extends StatelessWidget {
  final String title;
  final String value;
  final Color color;

  const ProgressCard({
    super.key,
    required this.title,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: TextStyle(
              color: color,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class ThemeCard extends StatelessWidget {
  const ThemeCard({
    super.key,
    required this.theme,
    required this.onTap,
  });
  final ProjectTheme theme;
  final void Function(Subtheme) onTap;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(theme.name),
      subtitle: Text('Unlocked: ${theme.progress.$1}/${theme.progress.$2}'),
      children: [
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: theme.subthemes.length,
          itemBuilder: (context, index) {
            return SubthemeCard(
              onTap: onTap,
              subtheme: theme.subthemes[index],
            );
          },
        ),
      ],
    );
  }
}

class SubthemeCard extends StatelessWidget {
  const SubthemeCard({
    super.key,
    required this.subtheme,
    required this.onTap,
  });
  final Subtheme subtheme;
  final void Function(Subtheme) onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(subtheme.name),
      subtitle: Text('Unlocked: ${subtheme.progress.$1}/${subtheme.progress.$2}'),
      onTap: () => onTap(subtheme),
    );
  }
}

class SubthemeDetails extends ConsumerWidget {
  const SubthemeDetails({super.key, required this.subtheme});
  final Subtheme? subtheme;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<FlashCard>? flashCards;
    if (subtheme != null) {
      flashCards = ref.watch(subthemeFlashCardsProvider(subtheme!));
    }
    return GlassmorphicContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Selected Concept',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          if (subtheme == null)
            const Text('Select a subtheme to view its concepts')
          else
            Expanded(
              child: FlashCardsGrid(
                flashCards: flashCards!,
              ),
            ),
        ],
      ),
    );
  }
}

class FlashCardsGrid extends StatelessWidget {
  const FlashCardsGrid({super.key, required this.flashCards});
  final List<FlashCard> flashCards;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: kCardAspectRatio,
      ),
      itemCount: flashCards.length,
      itemBuilder: (context, index) {
        return FlashCardWidget(
          card: flashCards[index],
        );
      },
    );
  }
}
