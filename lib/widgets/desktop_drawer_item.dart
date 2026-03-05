import 'package:final_task/models/drawer_item_model.dart';
import 'package:final_task/utils/app_styles.dart';
import 'package:final_task/utils/get_responsive_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DesktopDrawerItem extends StatelessWidget {
  const DesktopDrawerItem({super.key, required this.item});
  final DrawerItemModel item;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          SvgPicture.asset(item.icon),
          Spacer(flex: 1),

          Text(
            item.title,
            style: AppStyles.buttonLarge.copyWith(
              fontSize: getResponsiveSize(context: context, baseFontSize: 12.5),
            ),
          ),
          Spacer(flex: 3),
          Icon(Icons.arrow_forward_ios, color: Colors.white, size: 15),
        ],
      ),
    );
  }
}
