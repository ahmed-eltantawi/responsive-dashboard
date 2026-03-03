// import 'package:final_task/utils/charts_assets.dart';
// import 'package:final_task/widgets/info_card.dart';
// import 'package:flutter/material.dart';

// class SmallInfoCardsListBuilder extends StatelessWidget {
//   const SmallInfoCardsListBuilder({super.key, required this.cards});
//   // static List<InfoCardWidget> cards = [
//   //   InfoCardWidget(image: ChartsAssets.totalPendingOrders),
//   //   InfoCardWidget(image: ChartsAssets.bestSellingProduct),
//   //   InfoCardWidget(image: ChartsAssets.yourRating),
//   //   InfoCardWidget(image: ChartsAssets.newProduct),
//   // ];
//   final List<InfoCardWidget> cards;
//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (BuildContext context, BoxConstraints constraints) {
//         return ListView.builder(
//           scrollDirection: Axis.horizontal,
//           itemBuilder: (context, index) {
//             return SizedBox(
//               width: constraints.maxWidth / cards.length,
//               child: cards[index],
//             );
//           },
//           itemCount: cards.length,
//         );
//       },
//     );

//     // GridView.builder(
//     //   shrinkWrap: true,
//     //   physics: NeverScrollableScrollPhysics(),
//     //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//     //     childAspectRatio: 0.68447580645,
//     //     crossAxisCount: 4,
//     //     crossAxisSpacing: 24,
//     //     mainAxisSpacing: 16,
//     //   ),
//     //   itemBuilder: (context, index) {
//     //     return cards[index];
//     //   },
//     //   itemCount: cards.length,
//     // );
//   }
// }
