import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyListReqAboutoptn  extends StatelessWidget{
  final String lRAName;
  final bool listReqAboutisClicked;

  const MyListReqAboutoptn({
    super.key,
    required this.lRAName,
    required this.listReqAboutisClicked
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding : const EdgeInsets.only(bottom : 8),
      decoration :  BoxDecoration(
        border : Border(
          bottom: BorderSide(
            color: (listReqAboutisClicked) ? const Color(0xff6C63FF) : Colors.transparent,
            width : 2,
          ) 
        )
      ),
      child: Text(
          lRAName,
          style : GoogleFonts.poppins(
            fontSize : 15,
            fontWeight : (listReqAboutisClicked) ? FontWeight.bold : FontWeight.normal,
            color : (listReqAboutisClicked) ? const Color(0xff31313D) : const Color(0xff31313D),
            
          ),
      ),
    );
  }
}