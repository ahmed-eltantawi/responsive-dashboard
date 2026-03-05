import 'package:final_task/widgets/announcements_widget.dart';
import 'package:final_task/widgets/info_cards.dart';
import 'package:flutter/material.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40),
        SmallInfoCards(),
        SizedBox(height: 24),
        LargeInfoCards(),
        SizedBox(height: 24),
        AnnouncementsWidget(),
      ],
    );
  }
}
