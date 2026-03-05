import 'package:final_task/utils/app_styles.dart';
import 'package:final_task/utils/get_responsive_size.dart';
import 'package:final_task/utils/icon_assets.dart';
import 'package:final_task/utils/images_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarProfileSection extends StatelessWidget {
  const AppBarProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(Assets.iconsActiveBill),
        SizedBox(width: 5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "Puma Official Store",
              style: AppStyles.robotoBold15.copyWith(
                fontSize: getResponsiveSize(context: context, baseFontSize: 9),
              ),
            ),
            Text(
              "Change Seller",
              style: AppStyles.robotoSemiBold10.copyWith(
                fontSize: getResponsiveSize(context: context, baseFontSize: 8),
              ),
            ),
          ],
        ),
        SizedBox(width: 16),
        SizedBox(
          height: 36,
          width: 36,
          child: Image.asset(ImagesAssets.profilePhoto),
        ),
      ],
    );
  }
}
