import 'package:final_task/layout/adaptive_layout.dart';
import 'package:final_task/layout/desktop_layout.dart';
import 'package:final_task/layout/mobile_layout.dart';
import 'package:final_task/layout/tablet_layout.dart';
import 'package:final_task/utils/const_colors.dart';
import 'package:final_task/widgets/moblie_app_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MediaQuery.sizeOf(context).width <= 600 ? MobileAppBar() : null,
      backgroundColor: kLightGrayColor,
      body: AdaptiveLayout(
        mobileLayout: (context) => MobileLayout(),

        tabletLayout: (context) => TabletLayout(),
        diskTopLayout: (context) => DeskTopLayout(),
      ),
    );
  }
}
