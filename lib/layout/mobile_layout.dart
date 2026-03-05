import 'package:final_task/utils/app_styles.dart';
import 'package:final_task/utils/const_colors.dart';
import 'package:final_task/utils/get_responsive_size.dart';
import 'package:final_task/utils/images_assets.dart';
import 'package:final_task/views/Dash_board_view.dart';
import 'package:final_task/widgets/announcements_widget.dart';
import 'package:final_task/widgets/bottom_widget.dart';
import 'package:final_task/widgets/info_cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24, left: 24, right: 24),
      child: ListView(
        children: [
          SizedBox(height: 24),
          Row(
            children: [
              Text(
                "Promotions",
                style: AppStyles.mulishSemiBold11White.copyWith(
                  color: Colors.black,
                  fontSize: getResponsiveSize(
                    context: context,
                    baseFontSize: 20,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          FittedBox(child: Image.asset(ImagesAssets.promotion1)),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.circle, size: 10, color: kNavbarColor),
              SizedBox(width: 10),
              Icon(Icons.circle, size: 10, color: Color(0xffB8B8B8)),
              SizedBox(width: 10),
              Icon(Icons.circle, size: 10, color: Color(0xffB8B8B8)),
            ],
          ),
          SizedBox(height: 45),

          SmallInfoCards(isMobile: true),
          _CustomTitle(text: "Catalog Performance"),
          LargeInfoCards(isMobile: true),
          _CustomTitle(text: "This Week"),

          AnnouncementsWidget(),
          BottomWidget(isMobile: true),
        ],
      ),
    );
  }
}

class _CustomTitle extends StatelessWidget {
  const _CustomTitle({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 25, child: Divider()),
        Row(
          children: [
            Text(
              text,
              style: AppStyles.robotoSemiBold10.copyWith(
                color: Colors.black,
                fontSize: getResponsiveSize(context: context, baseFontSize: 20),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
