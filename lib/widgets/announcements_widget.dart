import 'package:final_task/utils/app_styles.dart';
import 'package:final_task/utils/const_colors.dart';
import 'package:final_task/utils/icon_assets.dart';
import 'package:final_task/widgets/announcements_item_widget.dart';
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
      history: "Jan 26",

      text:
          "[IMPORTANT] API endponit limit. please forward. \nDear Seller, As part of our continuous efforts to improve system response time and reliability ...",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 751 / 373,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Header(),
            Divider(),
            Expanded(
              child: ListView.builder(
                itemCount: announcementsItems.length,
                itemBuilder: (context, index) {
                  return announcementsItems[index];
                },
              ),
            ),
            Bottom(),
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Announcements", style: AppStyles.roboto20Black),
          SizedBox(width: 30),
          Flexible(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 1),
              width: 330.5,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: const Color(0xFFDBDADE)),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 6,
                    ),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      spacing: 8,
                      children: [
                        Text('Search', style: AppStyles.robotoRegular15),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SvgPicture.asset(Assets.iconsMore),
        ],
      ),
    );
  }
}

class Bottom extends StatelessWidget {
  const Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 12, bottom: 12),
      child: Row(
        children: [
          Text(
            "Showing 1 to 4 of 17",
            style: AppStyles.robotoRegular15.copyWith(
              color: kGrayColor,
              fontSize: 13,
            ),
          ),
          Spacer(),
          Container(
            decoration: BoxDecoration(
              color: kBodyTextColor,
              borderRadius: BorderRadius.circular(4),
            ),
            height: 20,
            width: 20,
            child: Center(
              child: Icon(Icons.arrow_back_ios, color: Colors.white, size: 15),
            ),
          ),
          SizedBox(width: 20),
          Container(
            decoration: BoxDecoration(
              color: kBodyTextColor,
              borderRadius: BorderRadius.circular(4),
            ),
            height: 20,
            width: 20,
            child: Center(
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
