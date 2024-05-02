import 'package:flutter/material.dart';
import 'package:jalatest/features/features.dart';

class ShrimpPricesScreen extends StatelessWidget {
  const ShrimpPricesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultScaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [TryAnotherFeature(), NewPrices()],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FABFilter(),
    );
  }
}
