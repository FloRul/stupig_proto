import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stupig_proto/systems/primary_resources/notifiers.dart';
import 'package:stupig_proto/systems/purchase/notifiers.dart';
import 'package:stupig_proto/systems/secondary_resources/models.dart';
import 'package:stupig_proto/systems/secondary_resources/notifiers.dart';
import 'package:stupig_proto/widgets/common/glassmorphism_container.dart';

class UpgradesShop extends ConsumerWidget {
  const UpgradesShop({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      spacing: 8,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        PurchaseUpgradeButton(
          label: 'Buy 1 focus point',
          price: 100,
          onTap: () => ref.read(purchaseProvider.notifier).tryPurchase(100),
        ),
        PurchaseUpgradeButton(
          label: 'Upgrade tech skills',
          price: ref.watch(secResourcesProvider)[ResourceType.techSkills]!.cost,
          onTap: () => ref.read(secResourcesProvider.notifier).upgrade(ResourceType.techSkills),
        ),
      ],
    );
  }
}

class PurchaseUpgradeButton extends ConsumerWidget {
  const PurchaseUpgradeButton({
    super.key,
    required this.price,
    required this.label,
    required this.onTap,
  });

  final int price;
  final String label;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GlassmorphicContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label),
          const SizedBox(width: 8),
          ElevatedButton(
            onPressed: ref.watch(moneyProvider) >= price ? onTap : null,
            child: Text(price.toString()),
          )
        ],
      ),
    );
  }
}
