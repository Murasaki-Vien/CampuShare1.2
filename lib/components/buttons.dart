import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final String buttonName; 
  final bool isChecked;
  const MyButton({
      super.key,
      this.isChecked = true,
      required this.buttonName,
    });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child : Container(
        padding : const EdgeInsets.only(top : 17, bottom : 17, right : 70, left : 69),
        margin : const EdgeInsets.symmetric(horizontal : 73),
        decoration : BoxDecoration(
          color : (isChecked)? Colors.deepPurple[400] : Colors.black,
          
          borderRadius : BorderRadius.circular(10), 
        ),
        child : Center(
          child : Text(
            buttonName,
            style : GoogleFonts.inter(
              textStyle : const TextStyle(
                color : Colors.white,
                fontSize : 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}