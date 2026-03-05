import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoCardWidget extends StatelessWidget {
  const InfoCardWidget({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return FittedBox(child: SvgPicture.asset(image));
  }
}
