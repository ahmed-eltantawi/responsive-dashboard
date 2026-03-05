// import 'package:final_task/utils/app_styles.dart';
// import 'package:final_task/utils/const_colors.dart';
// import 'package:final_task/utils/get_responsive_size.dart';
// import 'package:final_task/utils/icon_assets.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class AnnouncementsItemWidget extends StatelessWidget {
//   const AnnouncementsItemWidget({
//     super.key,
//     required this.text,
//     required this.history,
//   });
//   final String text;
//   final String history;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           children: [
//             SizedBox(width: 24),
//             Text(
//               history,
//               style: AppStyles.robotoSemiBold10.copyWith(
//                 fontSize: getResponsiveSize(context: context, baseFontSize: 11),
//                 color: kLightGrayColor,
//               ),
//             ),
//             SizedBox(width: 12),

//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 16.0),
//               child: Text(
//                 text,
//                 style: TextStyle(
//                   color: const Color(0xFF363740),
//                   fontSize: getResponsiveSize(
//                     context: context,
//                     baseFontSize: 8,
//                   ),
//                   fontFamily: 'Roboto',
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//             ),
//             SizedBox(width: 12),
//             Spacer(),
//             SvgPicture.asset(Assets.iconsMail),
//             SizedBox(width: 24),
//           ],
//         ),
//         Divider(),
//       ],
//     );
//   }
// }
// !====================================================================
import 'package:final_task/utils/app_styles.dart';
import 'package:final_task/utils/const_colors.dart';
import 'package:final_task/utils/get_responsive_size.dart';
import 'package:final_task/utils/icon_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AnnouncementsItemWidget extends StatelessWidget {
  const AnnouncementsItemWidget({
    super.key,
    required this.text,
    required this.history,
  });
  final String text;
  final String history;
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Flexible(flex: 24, child: SizedBox(width: 24)),
                Expanded(
                  flex: 40,
                  child: Text(
                    history,
                    style: AppStyles.robotoSemiBold10.copyWith(
                      fontSize: getResponsiveSize(
                        context: context,
                        baseFontSize: 11,
                      ),
                      color: kLightGrayColor,
                    ),
                  ),
                ),
                SizedBox(width: 12),

                Expanded(
                  flex: 245,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text(
                      text,
                      style: TextStyle(
                        color: const Color(0xFF363740),
                        fontSize: getResponsiveSize(
                          context: context,
                          baseFontSize: 10,
                        ),
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 12),
                Expanded(flex: 24, child: SvgPicture.asset(Assets.iconsMail)),
                Flexible(flex: 24, child: SizedBox(width: 24)),
              ],
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}

//?==========================================================
// import 'package:final_task/utils/app_styles.dart';
// import 'package:final_task/utils/const_colors.dart';
// import 'package:final_task/utils/get_responsive_size.dart';
// import 'package:final_task/utils/icon_assets.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class AnnouncementsItemWidget extends StatelessWidget {
//   const AnnouncementsItemWidget({
//     super.key,
//     required this.text,
//     required this.history,
//   });
//   final String text;
//   final String history;
//   @override
//   Widget build(BuildContext context) {
//     return IntrinsicHeight(
//       child: Column(
//         children: [
//           Expanded(
//             child: Row(
//               children: [
//                 Flexible(flex: 24, child: SizedBox(width: 24)),
//                 Expanded(
//                   flex: 40,
//                   child: Text(
//                     history,
//                     style: AppStyles.robotoSemiBold10.copyWith(
//                       fontSize: getResponsiveSize(
//                         context: context,
//                         baseFontSize: 11,
//                       ),
//                       color: kLightGrayColor,
//                     ),
//                   ),
//                 ),
//                 SizedBox(width: 12),

//                 Expanded(
//                   flex: 615,
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 16.0),
//                     child: Text(
//                       text,
//                       style: TextStyle(
//                         color: const Color(0xFF363740),
//                         fontSize: getResponsiveSize(
//                           context: context,
//                           baseFontSize: 8,
//                         ),
//                         fontFamily: 'Roboto',
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(width: 12),

//                 Expanded(flex: 24, child: SvgPicture.asset(Assets.iconsMail)),
//                 Flexible(flex: 24, child: SizedBox(width: 24)),
//               ],
//             ),
//           ),
//           Divider(),
//         ],
//       ),
//     );
//   }
// }
