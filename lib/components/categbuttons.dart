import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCategoryBtn extends StatelessWidget {
  final String btnName;
  final svgName;
  final bool btnClicked;
  const MyCategoryBtn(
      {super.key,
      required this.btnName,
      required this.svgName,
      required this.btnClicked}
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 55,
        width: 55,
        decoration: BoxDecoration(
            color: const Color(0xff6C63FF),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            svgName,
          //  SvgPicture.asset(
          //    svgName,
          //    height : 24,
          //    width : 24,
          //    colorFilter: ColorFilter.mode(
          //        (btnClicked) ? Colors.amber : Colors.amber, BlendMode.srcOut
          //    ),
          //  ),
            Text(
              btnName,
              style: GoogleFonts.poppins(
                fontSize: 8,
                color: (btnClicked) ? Colors.amber : Colors.white,
                fontWeight: FontWeight.w500
              ),
            ),
          ],
        ),
      ),
    );
  }
}
