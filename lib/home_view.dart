import 'package:final_task/layout/adaptive_layout.dart';
import 'package:final_task/layout/desktop_layout.dart';
import 'package:final_task/layout/tablet_layout.dart';
import 'package:final_task/utils/const_colors.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightGrayColor,
      body: AdaptiveLayout(
        mobileLayout: (context) {
          return Text('This is moblie layout');
        },
        tabletLayout: (context) {
          return TabletLayout();
        },
        diskTopLayout: (context) => DeskTopLayout(),
      ),
    );
  }
}
