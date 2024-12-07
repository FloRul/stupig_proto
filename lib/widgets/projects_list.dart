import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stupig_proto/state_management/game_state/game_state_notifier.dart';
import 'package:stupig_proto/widgets/flippable_card.dart';

class ProjectsList extends ConsumerWidget {
  const ProjectsList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var activeProjects = ref.watch(gameStateNotifierProvider.selectAsync((data) => data.activeProjects));
    return FutureBuilder(
        future: activeProjects,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return FlippableCard(
                  title: snapshot.data![index].name,
                  backContent: Text(snapshot.data![index].description),
                );
              },
            );
          }
          if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }
          return const CircularProgressIndicator();
        });
  }
}
