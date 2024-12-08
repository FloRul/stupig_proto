import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stupig_proto/state_management/game_state/game_state_notifier.dart';
import 'package:stupig_proto/utils/constants.dart';
import 'package:stupig_proto/widgets/flippable_card.dart';

class ActiveProjectsList extends ConsumerWidget {
  const ActiveProjectsList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(gameStateNotifierProvider).when(
          data: (data) => ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: data.activeProjects.length,
            itemBuilder: (context, index) => SizedBox(
              height: kCardHeight,
              width: kCardWidth,
              child: FlippableCard(
                title: data.activeProjects[index].name,
                backContent: Text(data.activeProjects[index].description),
              ),
            ),
          ),
          error: (error, stackTrace) => const Center(
            child: Text('An error has occured'),
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        );
  }
}
