import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddInputBox extends StatelessWidget{
  final controller;
  final String hintText;
  final bool obscureText;
  
  const AddInputBox({
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
                color : Color(0xFFEEEEEE),
                width : 2,
              ),
            ),
            focusedBorder : const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide : BorderSide(
                  color : Color(0xFF6C63FF),
                  width : 2,
                ),
            ),
            fillColor : Colors.grey.shade200,
            filled : true,
            hintStyle : GoogleFonts.poppins(
              color : Color(0xFFEEEEEE),
            ),
          ),
        ),
      );
  }
}

