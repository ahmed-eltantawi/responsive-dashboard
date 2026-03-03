import 'package:final_task/views/desktop_body_view.dart';
import 'package:final_task/views/desktop_drawer.dart';
import 'package:final_task/views/tablet_drawer.dart';
import 'package:flutter/material.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 88, child: TabletDrawerView()),
        SizedBox(width: 12),
        Expanded(flex: 751, child: (DesktopBodyView())),
        SizedBox(width: 12),
        Expanded(flex: 363, child: Container(color: Colors.grey)),
        SizedBox(width: 24),
      ],
    );
  }
}
