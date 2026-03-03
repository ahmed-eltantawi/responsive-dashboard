import 'package:final_task/views/desktop_body_view.dart';
import 'package:final_task/views/desktop_drawer.dart';
import 'package:final_task/widgets/bottom_widget.dart';
import 'package:final_task/widgets/search_bar_widget.dart';
import 'package:flutter/material.dart';

class DeskTopLayout extends StatelessWidget {
  const DeskTopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      // children: [
      //   SizedBox(width: 255, child: DesktopDrawer()),
      //   SizedBox(width: 12),
      //   SizedBox(width: 751, child: (DesktopBodyView())),
      //   SizedBox(width: 12),
      //   Flexible(
      //     child: SizedBox(width: 363, child: Container(color: Colors.red)),
      //   ),
      //   SizedBox(width: 24),
      // ],
      children: [
        Expanded(flex: 255, child: DesktopDrawer()),
        SizedBox(width: 12),
        Expanded(
          flex: 700 + 363,
          child: Column(
            children: [
              SizedBox(height: 60, child: SearchBarWidget()),
              Expanded(
                child: Row(
                  children: [
                    Expanded(flex: 700, child: (DesktopBodyView())),
                    SizedBox(width: 12),
                    Expanded(flex: 363, child: Container(color: Colors.red)),
                    SizedBox(width: 24),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
