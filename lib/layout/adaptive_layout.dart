import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.diskTopLayout,
  });

  final WidgetBuilder mobileLayout, tabletLayout, diskTopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 600) {
          return mobileLayout(context);
        } else if (constraints.maxWidth < 900) {
          return tabletLayout(context);
        } else {
          return diskTopLayout(context);
        }
      },
    );
  }
}
