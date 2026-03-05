import 'package:final_task/models/drawer_item_model.dart';
import 'package:final_task/utils/icon_assets.dart';
import 'package:final_task/widgets/desktop_drawer_item.dart';
import 'package:final_task/widgets/selectedDrawerItem.dart';
import 'package:flutter/material.dart';

class DrawerList extends StatefulWidget {
  const DrawerList({super.key});

  @override
  State<DrawerList> createState() => _DrawerListState();
}

int selectedIndex = 0;

class _DrawerListState extends State<DrawerList> {
  @override
  Widget build(BuildContext context) {
    final List<DrawerItemModel> drawerItems = const [
      DrawerItemModel(icon: Assets.iconsOverview, title: 'Overview'),
      DrawerItemModel(icon: Assets.iconsProducts, title: 'Products'),
      DrawerItemModel(icon: Assets.iconsOrders, title: 'Orders'),
      DrawerItemModel(icon: Assets.iconsReports, title: 'Reports'),
      DrawerItemModel(icon: Assets.iconsSettings, title: 'Settings'),
      DrawerItemModel(
        icon: Assets.iconsAdministration,
        title: 'Administration',
      ),
      DrawerItemModel(icon: Assets.iconsMaintenance, title: 'Maintenance'),
      DrawerItemModel(icon: Assets.iconsHelp, title: 'Help'),
    ];
    return SliverList.builder(
      itemCount: drawerItems.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (selectedIndex != index) {
              setState(() {
                selectedIndex = index;
              });
            }
          },
          child: selectedIndex == index
              ? SelectedDrawerItem(item: drawerItems[index])
              : DesktopDrawerItem(item: drawerItems[index]),
        );
      },
    );
  }
}
