import 'package:final_task/views/tablet_drawer.dart';
import 'package:final_task/views/tablet_body_view.dart';
import 'package:flutter/material.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 88, child: TabletDrawerView()),
        SizedBox(width: 24),
        Expanded(flex: 1328, child: TabletBodyView()),
      ],
    );
  }
}
