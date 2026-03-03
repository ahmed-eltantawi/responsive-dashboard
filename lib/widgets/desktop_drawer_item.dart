import 'package:final_task/models/drawer_item_model.dart';
import 'package:final_task/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DesktopDrawerItem extends StatelessWidget {
  const DesktopDrawerItem({super.key, required this.item});
  final DrawerItemModel item;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(item.title, style: AppStyles.buttonLarge),
      leading: SvgPicture.asset(item.icon),
      trailing: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 15),
    );
  }
}
