import 'package:final_task/widgets/info_card.dart';
import 'package:flutter/material.dart';

class InfoCardsListBuilder extends StatelessWidget {
  InfoCardsListBuilder({
    super.key,
    required this.cards,
    required this.aspectRatio,
    this.isMobile = false,
  });
  bool isMobile;

  final double aspectRatio;

  final List<InfoCardWidget> cards;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: aspectRatio,
        crossAxisCount: (isMobile ? cards.length ~/ 2 : cards.length),
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
