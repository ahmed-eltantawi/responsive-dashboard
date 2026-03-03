import 'package:final_task/models/drawer_item_model.dart';
import 'package:final_task/widgets/desktop_drawer_item.dart';
import 'package:flutter/material.dart';

class SelectedDrawerItem extends StatelessWidget {
  const SelectedDrawerItem({super.key, required this.item});
  final DrawerItemModel item;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 3,
          height: 50,
          decoration: BoxDecoration(color: Colors.white),
        ),
        Expanded(
          child: Container(
            color: Color(0xff43444D),
            child: DesktopDrawerItem(item: item),
          ),
        ),
      ],
    );
  }
}
