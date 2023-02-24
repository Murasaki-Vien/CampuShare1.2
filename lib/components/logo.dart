import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyLogo extends StatelessWidget {
  final String image;
  final logoName;
  const MyLogo({
      super.key,
      required this.image,
      this.logoName,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      child : SvgPicture.asset(
          image,
          width : 35,
          height : 35,
        ),
    );
  }
}