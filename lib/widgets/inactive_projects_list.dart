import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stupig_proto/state_management/game_state/game_state_notifier.dart';
import 'package:stupig_proto/utils/constants.dart';
import 'package:stupig_proto/widgets/flippable_card.dart';

class InactiveProjectsList extends ConsumerWidget {
  const InactiveProjectsList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(gameStateNotifierProvider).when(
          data: (data) => GridView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: data.inactiveProjects.length,
            itemBuilder: (context, index) => SizedBox(
              height: kCardHeight,
              width: kCardWidth,
              child: Draggable(
                feedback: FlippableCard(
                  title: data.inactiveProjects[index].$1.name,
                  backContent: Text(data.inactiveProjects[index].$1.description),
                ),
                child: FlippableCard(
                  title: data.inactiveProjects[index].$1.name,
                  backContent: Text(data.inactiveProjects[index].$1.description),
                ),
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
