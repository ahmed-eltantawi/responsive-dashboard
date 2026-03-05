import 'package:final_task/utils/app_styles.dart';
import 'package:final_task/utils/const_colors.dart';
import 'package:final_task/utils/get_responsive_size.dart';
import 'package:final_task/utils/icon_assets.dart';
import 'package:final_task/utils/images_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MobileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MobileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: kNavbarColor,
      actions: [
        SizedBox(width: 24),
        SvgPicture.asset(Assets.iconsMenu),
        SizedBox(width: 20),
        SvgPicture.asset(Assets.iconsWhiteSearch),
        Spacer(),
        SvgPicture.asset(Assets.iconsWhiteActiveBill),
        SizedBox(width: 16),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "Puma Official Store",
              style: AppStyles.robotoBold15.copyWith(
                color: Colors.white,
                fontSize: getResponsiveSize(context: context, baseFontSize: 12),
              ),
            ),
            Text(
              "Change Seller",
              style: AppStyles.robotoSemiBold10.copyWith(
                color: kLightGrayColor,
                fontSize: getResponsiveSize(context: context, baseFontSize: 10),
              ),
            ),
          ],
        ),
        SizedBox(width: 16),
        Image.asset(ImagesAssets.profilePhoto, width: 36),
        SizedBox(width: 24),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
