import 'package:final_task/models/drawer_item_model.dart';
import 'package:final_task/utils/icon_assets.dart';
import 'package:final_task/widgets/desktop_drawer_item.dart';
import 'package:final_task/widgets/selectedDrawerItem.dart';
import 'package:flutter/material.dart';

class DrawerListView extends StatefulWidget {
  const DrawerListView({super.key});

  @override
  State<DrawerListView> createState() => _DrawerListViewState();
}

int selectedIndex = 0;

class _DrawerListViewState extends State<DrawerListView> {
  @override
  Widget build(BuildContext context) {
    List<DrawerItemModel> drawerItems = [
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
