import 'package:final_task/utils/charts_assets.dart';
import 'package:final_task/widgets/small_info_card.dart';
import 'package:flutter/material.dart';

class SmallInfoCardsListBuilder extends StatelessWidget {
  const SmallInfoCardsListBuilder({super.key});
  static List<InfoCardWidget> cards = [
    InfoCardWidget(image: ChartsAssets.totalPendingOrders, height: 248),
    InfoCardWidget(image: ChartsAssets.bestSellingProduct, height: 248),
    InfoCardWidget(image: ChartsAssets.yourRating, height: 248),
    InfoCardWidget(image: ChartsAssets.newProduct, height: 248),
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.68447580645,
        crossAxisCount: 4,
        crossAxisSpacing: 24,
        mainAxisSpacing: 16,
      ),
      itemBuilder: (context, index) {
        return cards[index];
      },
      itemCount: cards.length,
    );
  }
}
