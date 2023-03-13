import 'package:flutter/material.dart';

class MysearchBar extends StatelessWidget {
  final TextEditingController controller;
  final String hinttext;
  final bool enabled;
  final fillColor;
  final Icon icon;
  const MysearchBar(
      {super.key,
      required this.controller,
      required this.hinttext,
      required this.fillColor,
      required this.enabled,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        disabledBorder : const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            borderSide: BorderSide(
              color: Color(0xFF6C63FF),
              width: 2,
            )),
        enabled : enabled,
        enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(80)),
            borderSide: BorderSide(
              color: Color(0xFF6C63FF),
              width: 2,
            )),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(80)),
          borderSide: BorderSide(
            color: Color(0xFF6C63FF),
            width: 2,
          ),
        ),
        fillColor: fillColor,
        filled: true,
        hintText: hinttext,
        prefixIcon: icon,
      ),
    );
  }
}
