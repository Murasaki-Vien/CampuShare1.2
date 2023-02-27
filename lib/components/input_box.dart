import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputBox extends StatelessWidget{
  final controller;
  final String hintText;
  final bool obscureText;
  
  const InputBox({
      super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText,
    });


  @override
  Widget build(BuildContext context){
    return Padding(
        padding : const EdgeInsets.only(left : 15, top: 16, right : 22, bottom : 0),
        child : TextField(
          controller : controller,
          obscureText : obscureText,
          decoration : InputDecoration( 
            enabledBorder : const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide : BorderSide(
                color : Color(0xFF6C63FF),
                width : 3,
              ),
            ),
            focusedBorder : const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide : BorderSide(
                  color : Color(0xff6C63FF),
                  width : 3,
                ),
            ),
            fillColor : Colors.grey.shade200,
            filled : true,
            hintText : hintText,
            hintStyle : GoogleFonts.poppins(
              color : Colors.grey.shade400,
            ),
          ),
        ),
      );
  }
}

