import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:stupig_proto/systems/progression/models.dart';
import 'package:stupig_proto/systems/progression/notifiers.dart';
import 'package:stupig_proto/utils/constants.dart';
import 'package:stupig_proto/widgets/progression/flashcard.dart';
import 'package:collection/collection.dart';

class BoosterPackDialog extends ConsumerStatefulWidget {
  const BoosterPackDialog({super.key});

  @override
  ConsumerState<BoosterPackDialog> createState() => _BoosterPackDialogState();
}

const kDialogWidth = 800.0;
const kDialogHeight = 400.0;

class _BoosterPackDialogState extends ConsumerState<BoosterPackDialog> {
  bool _isOpened = false;
  

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        transitionBuilder: (Widget child, Animation<double> animation) {
          final rotate = Tween(begin: 1.0, end: 0.0).animate(animation);
          return AnimatedBuilder(
            animation: rotate,
            child: child,
            builder: (context, child) {
              final isFront = ValueKey(_isOpened) == child?.key;
              final rotationY = isFront ? rotate.value : -rotate.value;
              return Transform(
                transform: Matrix4.rotationY(rotationY * pi),
                alignment: Alignment.center,
                child: child,
              );
            },
          );
        },
        child: _isOpened
            ? OpenedPackWidget(
                key: const ValueKey(true),
                cards: ref.watch(nextLvlFlashCardsProvider),
              )
            : ClosedPackWidget(
                key: const ValueKey(false),
                onTap: () => setState(() => _isOpened = true),
              ),
      ),
    );
  }
}

class OpenedPackWidget extends StatelessWidget {
  const OpenedPackWidget({
    super.key,
    required this.cards,
  });

  final List<FlashCard> cards;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      width: kDialogWidth,
      height: kDialogHeight,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        children: [
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                final cardWidth = (constraints.maxWidth / 5) - 20; // Adjust the width as needed
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: cards.mapIndexed((index, card) {
                    return SizedBox(
                      width: cardWidth,
                      child: AspectRatio(
                        aspectRatio: kCardAspectRatio,
                        child: FlashCardWidget(card: card).animate().slideY(
                              delay: (index * 100).ms,
                              begin: index % 2 == 0 ? 100 : -100,
                              end: 0,
                              duration: 400.ms,
                              curve: Curves.easeOut,
                            ),
                      ),
                    );
                  }).toList(),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade400,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Close',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ClosedPackWidget extends StatelessWidget {
  const ClosedPackWidget({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: kDialogWidth,
        height: kDialogHeight,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blue.shade400, Colors.purple.shade400],
          ),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.blue.shade200.withOpacity(0.5),
              blurRadius: 15,
              spreadRadius: 2,
            ),
          ],
        ),
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.card_giftcard,
                size: 64,
                color: Colors.white,
              ),
              SizedBox(height: 16),
              Text(
                'Tap to Open!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
