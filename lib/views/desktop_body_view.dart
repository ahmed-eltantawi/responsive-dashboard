import 'package:final_task/utils/charts_assets.dart';
import 'package:final_task/widgets/announcements_widget.dart';
import 'package:final_task/widgets/bottom_widget.dart';
import 'package:final_task/widgets/info_card.dart';
import 'package:final_task/widgets/large_info_cards_list_builder.dart';
import 'package:final_task/widgets/search_bar_widget.dart';
import 'package:flutter/material.dart';

class DesktopBodyView extends StatelessWidget {
  const DesktopBodyView({super.key});
  static List<InfoCardWidget> smallCards = [
    InfoCardWidget(image: ChartsAssets.totalPendingOrders),
    InfoCardWidget(image: ChartsAssets.bestSellingProduct),
    InfoCardWidget(image: ChartsAssets.yourRating),
    InfoCardWidget(image: ChartsAssets.newProduct),
  ];
  static List<InfoCardWidget> largeCards = [
    InfoCardWidget(image: ChartsAssets.salesSummary),
    InfoCardWidget(image: ChartsAssets.orderVolume),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      // children: [
      //   SizedBox(height: 60, child: SearchBarWidget()),
      //   SizedBox(height: 40),
      //   SizedBox(height: 248, child: InfoCardsListBuilder(cards: smallCards)),
      //   SizedBox(height: 24),
      //   SizedBox(height: 328, child: InfoCardsListBuilder(cards: largeCards)),
      //   SizedBox(height: 24),
      //   SizedBox(height: 373, child: AnnouncementsWidget()),
      //   SizedBox(height: 90, child: BottomWidget()),
      // ],
      children: [
        SizedBox(height: 40),
        InfoCardsListBuilder(cards: smallCards, aspectRatio: 0.68548387096),
        SizedBox(height: 24),
        InfoCardsListBuilder(cards: largeCards, aspectRatio: 1.10823170732),
        SizedBox(height: 24),
        AnnouncementsWidget(),
        BottomWidget(),
      ],
    );
  }
}
