import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

const List<String> list = <String>['Textbooks', 'Electronics', 'Sports', 'Music'];

class Dropdown_List extends StatefulWidget {
  const Dropdown_List({super.key});

  @override
  State<Dropdown_List> createState() => _Dropdown_ListState();
}

class _Dropdown_ListState extends State<Dropdown_List> {
  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
   return Padding(
     padding:  const EdgeInsets.only(left : 15, top: 16, right : 22, bottom : 0),
     child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xFFEEEEEE), width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xFFEEEEEE), width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder : const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide : BorderSide(
                          color : Color(0xFF6C63FF),
                          width : 2,
                  ),
              ),
                    filled: true,
                    fillColor: const Color(0xFFEEEEEE),
        ),
        dropdownColor: const Color(0xFFEEEEEE),
        value: dropdownValue,
        icon: const Icon(Icons.expand_more),
        style: GoogleFonts.poppins(
                         fontSize: 15,
                          color: const Color(0xFF31313D),
                        ),
        onChanged: (String? value) {
          // This is called when the user selects an item.
          setState(() {
            dropdownValue = value!;
          });
        },
        items: list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
   );
  }
}