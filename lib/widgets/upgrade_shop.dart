import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stupig_proto/systems/primary_resources/notifiers.dart';
import 'package:stupig_proto/systems/purchase/notifiers.dart';
import 'package:stupig_proto/widgets/common/glassmorphism_container.dart';

class UpgradesShop extends ConsumerWidget {
  const UpgradesShop({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        PurchaseUpgradeButton(
          canPurchase: ref.watch(moneyProvider) >= 500,
          label: 'Buy 1 focus point',
          price: 100,
          onTap: () => ref.read(purchaseProvider.notifier).tryPurchase(100),
        ),
      ],
    );
  }
}

class PurchaseUpgradeButton extends StatelessWidget {
  const PurchaseUpgradeButton({
    super.key,
    required this.price,
    required this.canPurchase,
    required this.label,
    required this.onTap,
  });

  final int price;
  final bool canPurchase;
  final String label;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GlassmorphicContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label),
          const SizedBox(width: 8),
          ElevatedButton(
            onPressed: canPurchase ? onTap : null,
            child: Text(price.toString()),
          )
        ],
      ),
    );
  }
}
