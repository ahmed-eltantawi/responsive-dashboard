import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoCardWidget extends StatelessWidget {
  const InfoCardWidget({super.key, required this.image, this.height});
  final String image;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: FittedBox(
        fit: BoxFit.fill,
        child: SvgPicture.asset(image),
      ),
    );
  }
}
