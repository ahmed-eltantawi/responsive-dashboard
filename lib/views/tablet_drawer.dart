import 'package:final_task/utils/const_colors.dart';
import 'package:final_task/utils/icon_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TabletDrawerView extends StatefulWidget {
  const TabletDrawerView({super.key});
  static List<String> icons = [
    Assets.iconsOverview,
    Assets.iconsProducts,
    Assets.iconsOrders,
    Assets.iconsReports,
    Assets.iconsSettings,
    Assets.iconsAdministration,
    Assets.iconsMaintenance,
    Assets.iconsHelp,
  ];

  @override
  State<TabletDrawerView> createState() => _TabletDrawerViewState();
}

class _TabletDrawerViewState extends State<TabletDrawerView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kNavbarColor,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 30)),
          SliverToBoxAdapter(child: SvgPicture.asset(Assets.iconsMenu)),
          SliverToBoxAdapter(child: SizedBox(height: 106)),
          SliverList.builder(
            itemCount: TabletDrawerView.icons.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  if (selectedIndex != index) {
                    setState(() {
                      selectedIndex = index;
                    });
                  }
                },
                child: selectedIndex == index
                    ? SelectedItem(index: index)
                    : UnSelectedItem(index: index),
              );
            },
          ),
        ],
      ),
    );
  }
}

class SelectedItem extends StatelessWidget {
  const SelectedItem({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff43444D),
      child: Row(
        children: [
          Container(
            width: 3,
            height: 50,
            decoration: BoxDecoration(color: Colors.white),
          ),
          Spacer(),
          UnSelectedItem(index: index),
          Spacer(),
        ],
      ),
    );
  }
}

class UnSelectedItem extends StatelessWidget {
  const UnSelectedItem({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      child: SvgPicture.asset(TabletDrawerView.icons[index]),
    );
  }
}
