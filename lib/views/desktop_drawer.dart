import 'package:final_task/utils/const_colors.dart';
import 'package:final_task/utils/icon_assets.dart';
import 'package:final_task/utils/images_assets.dart';
import 'package:final_task/widgets/drawer_listView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DesktopDrawer extends StatelessWidget {
  const DesktopDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kNavbarColor,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                right: 16,
                left: 16,
                top: 21,
                bottom: 9,
              ),
              child: Row(
                children: [
                  SvgPicture.asset(Assets.iconsMenu),
                  SizedBox(width: 19),
                  Flexible(
                    child: FittedBox(
                      child: SvgPicture.asset(ImagesAssets.companyLogo),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(child: Flexible(child: SizedBox(height: 88))),
          Expanded(child: DrawerListView()),
        ],
      ),
    );
  }
}
