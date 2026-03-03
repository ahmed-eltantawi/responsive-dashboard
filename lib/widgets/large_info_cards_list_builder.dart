import 'package:final_task/utils/charts_assets.dart';
import 'package:final_task/widgets/info_card.dart';
import 'package:flutter/material.dart';

class InfoCardsListBuilder extends StatelessWidget {
  const InfoCardsListBuilder({
    super.key,
    required this.cards,
    required this.aspectRatio,
  });
  final double aspectRatio;
  // static List<InfoCardWidget> cards = [
  //   InfoCardWidget(image: ChartsAssets.salesSummary),
  //   InfoCardWidget(image: ChartsAssets.orderVolume),
  // ];
  final List<InfoCardWidget> cards;
  @override
  Widget build(BuildContext context) {
    return
    //  LayoutBuilder(
    //   builder: (BuildContext context, BoxConstraints constraints) {
    //     return
    //     ListView.builder(
    //       shrinkWrap: true,
    //       physics: NeverScrollableScrollPhysics(),
    //       scrollDirection: Axis.horizontal,
    //       itemBuilder: (context, index) {
    //         return SizedBox(
    //           width: constraints.maxWidth / cards.length,
    //           child: cards[index],
    //         );
    //       },
    //       itemCount: cards.length,
    //     );
    //   },
    // );
    GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: aspectRatio,
        crossAxisCount: cards.length,
        crossAxisSpacing: 24,
        mainAxisSpacing: 12,
      ),
      itemBuilder: (context, index) {
        return cards[index];
      },
      itemCount: cards.length,
    );
  }
}
