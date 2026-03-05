import 'package:final_task/utils/charts_assets.dart';
import 'package:final_task/widgets/info_card.dart';
import 'package:final_task/widgets/info_cards_list_builder.dart';
import 'package:flutter/material.dart';

class SmallInfoCards extends StatelessWidget {
  SmallInfoCards({super.key, this.isMobile = false});
  bool isMobile;
  static List<InfoCardWidget> smallCards = [
    InfoCardWidget(image: ChartsAssets.totalPendingOrders),
    InfoCardWidget(image: ChartsAssets.bestSellingProduct),
    InfoCardWidget(image: ChartsAssets.yourRating),
    InfoCardWidget(image: ChartsAssets.newProduct),
  ];
  @override
  Widget build(BuildContext context) {
    return InfoCardsListBuilder(
      isMobile: isMobile,
      cards: smallCards,
      aspectRatio: 0.68548387096,
    );
  }
}

class LargeInfoCards extends StatelessWidget {
  LargeInfoCards({super.key, this.isMobile = false});
  static List<InfoCardWidget> largeCards = [
    InfoCardWidget(image: ChartsAssets.salesSummary),
    InfoCardWidget(image: ChartsAssets.orderVolume),
  ];
  bool isMobile;

  @override
  Widget build(BuildContext context) {
    return InfoCardsListBuilder(
      isMobile: isMobile,
      cards: largeCards,
      aspectRatio: 1.10823170732,
    );
  }
}
