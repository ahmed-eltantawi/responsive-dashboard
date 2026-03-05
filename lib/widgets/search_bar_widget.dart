import 'package:final_task/utils/app_styles.dart';
import 'package:final_task/utils/get_responsive_size.dart';
import 'package:final_task/utils/icon_assets.dart';
import 'package:final_task/utils/images_assets.dart';
import 'package:final_task/widgets/appBar_profile_section.dart';
import 'package:final_task/widgets/search_box_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24.0),
      child: Container(
        padding: EdgeInsets.only(top: 12, bottom: 12, right: 24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 74,
              child: Padding(
                padding: const EdgeInsets.only(left: 24),
                child: SearchBoxWidget(),
              ),
            ),
            Expanded(flex: 13, child: SizedBox()),
            AppBarProfileSection(),
          ],
        ),
      ),
    );
  }
}
