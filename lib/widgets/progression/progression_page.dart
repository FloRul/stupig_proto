import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stupig_proto/widgets/common/glassmorphism_container.dart';

class ProgressionPage extends ConsumerWidget {
  const ProgressionPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: ThemesList(),
          ),
          Expanded(
            flex: 3,
            child: ConceptDetails(),
          ),
        ],
      ),
    );
  }
}

class ThemesList extends ConsumerWidget {
  const ThemesList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GlassmorphicContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ProgressionHeader(),
          const Divider(),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: const [
                ThemeCard(),
              ],
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
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
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
      ),
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
  const ThemeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: const Text('Theme Name'),
      subtitle: const Text('Tier 1'),
      children: [
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 3,
          itemBuilder: (context, index) {
            return const SubthemeCard();
          },
        ),
      ],
    );
  }
}

class SubthemeCard extends StatelessWidget {
  const SubthemeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text('Subtheme Name'),
      subtitle: Text('3/5 concepts unlocked'),
      trailing: Icon(Icons.chevron_right),
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
