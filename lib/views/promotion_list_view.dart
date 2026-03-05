import 'package:final_task/utils/app_styles.dart';
import 'package:final_task/utils/get_responsive_size.dart';
import 'package:final_task/utils/images_assets.dart';
import 'package:flutter/material.dart';

class PromotionListView extends StatelessWidget {
  const PromotionListView({super.key});
  static List<String> cards = [
    ImagesAssets.promotion1,
    ImagesAssets.promotion2,
    ImagesAssets.promotion3,
    ImagesAssets.promotion4,
  ];
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 363 / 1050,
      // aspectRatio: 363 / (cards.length * (320 + (cards.length - 1) * 24)),
      child: Column(
        children: [
          _Header(),
          Expanded(
            child: GridView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 363 / 320,
                crossAxisCount: 1,
                crossAxisSpacing: 24,
                mainAxisSpacing: 12,
              ),
              itemCount: cards.length,
              itemBuilder: (context, index) {
                return FittedBox(child: Image.asset(cards[index]));
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _HeaderText(text: "Coming Soon"),
          _HeaderText(text: "End Soon"),
          _HeaderText(text: "Promotion List"),
        ],
      ),
    );
  }
}

class _HeaderText extends StatelessWidget {
  const _HeaderText({required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.h2.copyWith(
        fontSize: getResponsiveSize(context: context, baseFontSize: 10),
      ),
    );
  }
}
// import 'package:final_task/utils/app_styles.dart';
// import 'package:final_task/utils/get_responsive_size.dart';
// import 'package:final_task/utils/images_assets.dart';
// import 'package:flutter/material.dart';

// class PromotionListView extends StatelessWidget {
//   const PromotionListView({super.key});
//   static List<String> cards = [
//     ImagesAssets.promotion1,
//     ImagesAssets.promotion2,
//     ImagesAssets.promotion3,
//     ImagesAssets.promotion4,
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return AspectRatio(
//       aspectRatio: 363 / 1050,
//       child: Column(
//         children: [
//           _Header(),
//           Expanded(
//             child: GridView.builder(
//               scrollDirection: Axis.vertical,
//               shrinkWrap: true,
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 childAspectRatio: 363 / 320,
//                 crossAxisCount: 1,
//                 crossAxisSpacing: 24,
//                 mainAxisSpacing: 12,
//               ),
//               itemCount: cards.length,
//               itemBuilder: (context, index) {
//                 return FittedBox(child: Image.asset(cards[index]));
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class _Header extends StatelessWidget {
//   const _Header();

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 40,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           _HeaderText(text: "Coming Soon"),
//           _HeaderText(text: "End Soon"),
//           _HeaderText(text: "Promotion List"),
//         ],
//       ),
//     );
//   }
// }

// class _HeaderText extends StatelessWidget {
//   const _HeaderText({required this.text});
//   final String text;

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text,
//       style: AppStyles.h2.copyWith(
//         fontSize: getResponsiveSize(context: context, baseFontSize: 10),
//       ),
//     );
//   }
// }
