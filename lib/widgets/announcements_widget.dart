import 'package:final_task/utils/app_styles.dart';
import 'package:final_task/utils/const_colors.dart';
import 'package:final_task/utils/get_responsive_size.dart';
import 'package:final_task/utils/icon_assets.dart';
import 'package:final_task/widgets/announcements_item_widget.dart';
import 'package:final_task/widgets/search_box_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AnnouncementsWidget extends StatelessWidget {
  const AnnouncementsWidget({super.key});
  final List<AnnouncementsItemWidget> announcementsItems = const [
    AnnouncementsItemWidget(
      history: "Feb 11",
      text:
          "Zalora- Seller Communication Prioritization.\nHi, you’ve likely seen email from Zalora Seller Helpdesk to you with the Phrase [HIGH] or ...",
    ),

    AnnouncementsItemWidget(
      history: "Feb 11",

      text:
          "IMPORTANT] Update to API endponit limit.\nDear Seller, Follewing up from our previous announcement, please note a slight change ...",
    ),

    AnnouncementsItemWidget(
      history: "Feb 07",

      text:
          "Covid-19 Impact on Your Operations.\nDear Seller, please immediately inform your Account. Manage or SHD if your operations are impacted by ...",
    ),
    AnnouncementsItemWidget(
      history: "Feb 07",

      text:
          "Covid-19 Impact on Your Operations.\nDear Seller, please immediately inform your Account. Manage or SHD if your operations are impacted by ...",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _Header(),
          Divider(),

          SizedBox(
            height: getResponsiveSize(context: context, baseFontSize: 11) * 25,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: announcementsItems.length,
              itemBuilder: (context, index) {
                return announcementsItems[index];
              },
            ),
          ),
          Divider(),
          _Bottom(),
          SizedBox(height: 6),
        ],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Announcements",
              style: AppStyles.roboto20Black.copyWith(
                fontSize: getResponsiveSize(baseFontSize: 16, context: context),
              ),
            ),
            SizedBox(width: 30),
            Expanded(child: SearchBoxWidget()),
            SizedBox(width: 20),
            SvgPicture.asset(Assets.iconsMore),
          ],
        ),
      ),
    );
  }
}

class _Bottom extends StatelessWidget {
  const _Bottom();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: Row(
        children: [
          Text(
            "Showing 1 to 4 of 17",
            style: AppStyles.robotoRegular15.copyWith(
              color: kGrayColor,
              fontSize: getResponsiveSize(context: context, baseFontSize: 10.5),
            ),
          ),
          Spacer(),
          SwappingButton(isTheIconBack: true),
          SizedBox(width: 20),
          SwappingButton(isTheIconBack: false),
        ],
      ),
    );
  }
}

class SwappingButton extends StatelessWidget {
  const SwappingButton({super.key, required this.isTheIconBack});

  final bool isTheIconBack;
  @override
  Widget build(BuildContext context) {
    var icon = (Icons.arrow_back_ios, Icons.arrow_forward_ios);
    return Container(
      decoration: BoxDecoration(
        color: kBodyTextColor,
        borderRadius: BorderRadius.circular(4),
      ),
      height: getResponsiveSize(context: context, baseFontSize: 20),
      width: getResponsiveSize(context: context, baseFontSize: 20),
      child: Center(
        child: Icon(
          isTheIconBack ? icon.$1 : icon.$2,
          color: Colors.white,
          size: getResponsiveSize(context: context, baseFontSize: 10),
        ),
      ),
    );
  }
}
