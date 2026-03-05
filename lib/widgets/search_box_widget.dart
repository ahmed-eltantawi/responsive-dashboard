import 'package:final_task/utils/app_styles.dart';
import 'package:final_task/utils/const_colors.dart';
import 'package:final_task/utils/get_responsive_size.dart';
import 'package:final_task/utils/icon_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBoxWidget extends StatelessWidget {
  const SearchBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double size = getResponsiveSize(context: context, baseFontSize: 12);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7),
      decoration: BoxDecoration(
        border: Border.all(color: kLightGrayColor),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Row(
          children: [
            SvgPicture.asset(Assets.iconsSearch, height: size * 1.5),
            SizedBox(width: 10),
            Text(
              "Search",
              style: AppStyles.robotoRegular15.copyWith(
                color: kGrayColor,
                fontSize: size,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
