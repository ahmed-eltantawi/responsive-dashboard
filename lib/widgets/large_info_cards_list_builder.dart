import 'package:final_task/utils/charts_assets.dart';
import 'package:final_task/widgets/small_info_card.dart';
import 'package:flutter/material.dart';

class LargeInfoCardsListBuilder extends StatelessWidget {
  const LargeInfoCardsListBuilder({super.key});
  static List<InfoCardWidget> cards = [
    InfoCardWidget(image: ChartsAssets.salesSummary, height: 328),
    InfoCardWidget(image: ChartsAssets.orderVolume, height: 328),
  ];
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        const crossAxisCount = 2;
        const crossAxisSpacing = 24.0;
        const mainAxisSpacing = 16.0;
        final cardWidth = (constraints.maxWidth -
                (crossAxisCount - 1) * crossAxisSpacing) /
            crossAxisCount;
        final cardHeight = cardWidth * 0.65;
        final childAspectRatio = cardWidth / cardHeight;

        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: childAspectRatio,
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: crossAxisSpacing,
            mainAxisSpacing: mainAxisSpacing,
          ),
          itemBuilder: (context, index) {
            return cards[index];
          },
          itemCount: cards.length,
        );
      },
    );
  }
}
