import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyChatPage extends StatefulWidget {
  const MyChatPage({super.key});

  @override
  State<MyChatPage> createState() => _MyChatPageState();
}

class _MyChatPageState extends State<MyChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : SafeArea(
        child : SingleChildScrollView(
          child : Column(
            children: [
              
              Container(
                color : const Color(0xffFFFFFF),
                child : Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Row(
                    mainAxisAlignment : MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Message",
                        style : GoogleFonts.poppins(
                          fontSize : 20,
                          fontWeight : FontWeight.w500,
                        )  
                      ),

                      GestureDetector(
                        onTap : () {
                          print("Clicked");
                        },
                        child: Text("Clear all",
                          style : GoogleFonts.poppins(
                            fontSize : 20,
                            fontWeight : FontWeight.w500,
                            color : const Color(0xff6C63FF),
                          )  
                        ),
                      )
                    ],
                  ),
                )
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 9, 0, 0),
                child: Container(
                  color : const Color(0xffFFFFFF),
                  child : Row(
                    children:  [
                     
                      const Padding(
                        padding: EdgeInsets.fromLTRB(16, 20, 0, 20),
                        child: Icon(
                          Icons.person_2_outlined,
                          size : 61.8,
                        ),
                      ),
                      Container(
                        child : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                              "Charles Henricks Dela Peña",
                              style : GoogleFonts.poppins(
                                fontWeight : FontWeight.w500,
                                fontSize : 15
                              )
                            ),
                            Text(
                              "I would like to inquire an Arduino Uno",
                              textAlign : TextAlign.start,
                              style : GoogleFonts.poppins(
                                fontWeight : FontWeight.normal,
                                fontSize : 10
                              )
                            ),
                        ],
                      )
                      )
                    ],
                  )
                ),
              ),
            ],
          ),
        ),
      ),    
    );
  }
}