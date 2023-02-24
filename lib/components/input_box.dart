import 'package:flutter/material.dart';

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
                color : Color(0xFFB593FF),
                width : 3,
              ),
            ),
            focusedBorder : const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide : BorderSide(
                  color : Colors.blueAccent,
                  width : 3,
                ),
            ),
            fillColor : Colors.grey.shade200,
            filled : true,
            hintText : hintText,
            hintStyle : const TextStyle(
              color : Color(0xFFB593FF)
            ),
          ),
        ),
      );
  }
}

