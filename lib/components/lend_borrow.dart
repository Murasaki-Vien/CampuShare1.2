import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mylendborrowoptn extends StatelessWidget{
  final String lBName;
  final bool lendBorrowisClicked;

  const Mylendborrowoptn({
    super.key,
    required this.lBName,
    required this.lendBorrowisClicked
  });

  @override
  Widget build(BuildContext context) {
    return Text(
        lBName,
        style : GoogleFonts.poppins(
          fontSize : 15,
          fontWeight : (lendBorrowisClicked) ? FontWeight.bold : FontWeight.normal,
          color : (lendBorrowisClicked) ? const Color(0xff6C63FF) : const Color(0xff31313D)
        ),
    );
  }
}