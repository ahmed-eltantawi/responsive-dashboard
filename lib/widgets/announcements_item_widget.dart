import 'package:final_task/utils/app_styles.dart';
import 'package:final_task/utils/const_colors.dart';
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
    return SizedBox(
      child: Column(
        children: [
          ListTile(
            title: Text(
              text,
              style: TextStyle(
                color: const Color(0xFF363740),
                fontSize: 12,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                height: 1.50,
              ),
            ),
            leading: Text(
              history,
              style: AppStyles.robotoSemiBold10.copyWith(
                fontSize: 13,
                color: kLightGrayColor,
              ),
            ),
            trailing: SvgPicture.asset(Assets.iconsMail),
          ),
          Divider(),
        ],
      ),
    );
  }
}
