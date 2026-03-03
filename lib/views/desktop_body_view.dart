import 'package:final_task/widgets/announcements_widget.dart';
import 'package:final_task/widgets/large_info_cards_list_builder.dart';
import 'package:final_task/widgets/small_info_cards_list.dart';
import 'package:flutter/material.dart';

class DesktopBodyView extends StatelessWidget {
  const DesktopBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SmallInfoCardsListBuilder(),
        SizedBox(height: 24),
        Expanded(child: LargeInfoCardsListBuilder()),
        Expanded(child: AnnouncementsWidget()),
      ],
    );
  }
}
