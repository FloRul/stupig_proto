import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stupig_proto/systems/progression/models.dart';
import 'package:stupig_proto/systems/progression/notifiers.dart';
import 'package:stupig_proto/widgets/common/glassmorphism_container.dart';

class ProgressionPage extends ConsumerWidget {
  const ProgressionPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: ThemesList(),
            ),
            SizedBox(width: 16),
            Expanded(
              flex: 3,
              child: ConceptDetails(),
            ),
          ],
        ),
      ),
    );
  }
}

class ThemesList extends ConsumerWidget {
  const ThemesList({super.key});

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
                return ThemeCard(theme: theme);
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class ProgressionHeader extends StatelessWidget {
  const ProgressionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Progression',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        ProgressionStats(),
      ],
    );
  }
}

class ProgressionStats extends ConsumerWidget {
  const ProgressionStats({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Row(
      children: [
        ProgressCard(
          title: 'Total Progress',
          value: '45%',
          color: Colors.blue,
        ),
        SizedBox(width: 16),
        ProgressCard(
          title: 'Unlocked Concepts',
          value: '23/50',
          color: Colors.green,
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
  const ThemeCard({super.key, required this.theme});
  final ProjectTheme theme;

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
              subtheme: theme.subthemes[index],
            );
          },
        ),
      ],
    );
  }
}

class SubthemeCard extends StatelessWidget {
  const SubthemeCard({super.key, required this.subtheme});
  final Subtheme subtheme;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(subtheme.name),
      subtitle: Text('Unlocked: ${subtheme.progress.$1}/${subtheme.progress.$2}'),
    );
  }
}

class ConceptDetails extends StatelessWidget {
  const ConceptDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const GlassmorphicContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Selected Concept',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          ConceptContent(),
        ],
      ),
    );
  }
}

class ConceptContent extends StatelessWidget {
  const ConceptContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Select a concept to view details'),
    );
  }
}
