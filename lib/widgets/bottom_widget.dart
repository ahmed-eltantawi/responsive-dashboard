import 'package:final_task/utils/app_styles.dart';
import 'package:final_task/utils/get_responsive_size.dart';
import 'package:flutter/material.dart';

class BottomWidget extends StatelessWidget {
  BottomWidget({super.key, this.isMobile = false});
  bool isMobile;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: const EdgeInsets.only(top: 24.0), child: Divider()),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BottomText("About Zalora", isMobile: isMobile),
            Spacer(),
            BottomText("Terms & Conditions", isMobile: isMobile),
            BottomText("FAQ", isMobile: isMobile),
            BottomText("Contact Us", isMobile: isMobile),
            BottomText("Seller Labs", isMobile: isMobile),
          ],
        ),
        SizedBox(height: 8),
      ],
    );
  }
}

class BottomText extends StatelessWidget {
  BottomText(this.text, {super.key, this.isMobile = false});
  final String text;
  // if isMobile == true => padding = 9 and font size = 11
  bool isMobile;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Padding(
        padding: EdgeInsets.only(right: isMobile ? 9 : 16.0),
        child: Text(
          text,
          style: AppStyles.robotoRegular15.copyWith(
            fontSize: getResponsiveSize(
              context: context,
              baseFontSize: isMobile ? 11 : 12.0,
            ),
          ),
        ),
      ),
    );
  }
}
