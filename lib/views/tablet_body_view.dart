import 'package:final_task/views/Dash_board_view.dart';
import 'package:final_task/views/promotion_list_view.dart';
import 'package:final_task/widgets/bottom_widget.dart';
import 'package:final_task/widgets/search_bar_widget.dart';
import 'package:flutter/material.dart';

class TabletBodyView extends StatelessWidget {
  const TabletBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 8),
        Expanded(flex: 60, child: SearchBarWidget()),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(flex: 860, child: (DashBoardView())),
              SizedBox(width: 24),
              Expanded(flex: 420, child: PromotionListView()),
              SizedBox(width: 24),
            ],
          ),
        ),
        BottomWidget(),
      ],
    );
  }
}
