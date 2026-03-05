import 'package:final_task/views/desktop_body_view.dart';

import 'package:final_task/views/desktop_drawer.dart';
import 'package:flutter/material.dart';

class DeskTopLayout extends StatelessWidget {
  const DeskTopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 255, child: DesktopDrawer()),
        SizedBox(width: 24),
        Expanded(flex: 1162, child: DesktopBodyView()),
      ],
    );
  }
}
