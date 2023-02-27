import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyLogo extends StatelessWidget {
  final String image;
  final logoName;
  final double widthSize;
  final double heightSize;
  const MyLogo({
      super.key,
      required this.image,
      this.logoName,
      required this.widthSize,
      required this.heightSize
    });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
          image,
        );
  }
}