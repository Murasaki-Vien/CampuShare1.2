import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proj3/signUp/sign_up.dart';

class MyLandingPage extends StatelessWidget{
  const MyLandingPage({super.key});

  @override
  Widget build(BuildContext context){
    return  SafeArea(
            child: Scaffold(
              backgroundColor : Colors.white,
              //content inside
              body : SingleChildScrollView(
                  child : Center(
                    child: Column(
                      children: [

                        const SizedBox(height : 100),
                        SvgPicture.asset(
                          'lib/svg/Group.svg',
                          width : 289,
                          height : 207.69,
                        ),

                        const SizedBox(height : 56.31),

                        //Welcome to
                       
                        
                        Padding(
                          padding: const EdgeInsets.only(top : 0,  left : 35),
                          child: Row(
                              children: [
                                Text(
                                  'Welcome to',
                                  style : GoogleFonts.inter(
                                    fontSize : 32,
                                    color : Colors.black,
                                  ),
                                ),
                              ],
                            ),
                        ),

                        //Campus Share
                        Padding(
                          padding: const EdgeInsets.only(top : 0,  left : 35),
                          child: Row(
                            children: [
                              Text(
                                'Campu',
                                style : GoogleFonts.inter(
                                  fontSize : 40,
                                  fontWeight : FontWeight.w800,
                                  color : Colors.black,
                                ),
                              ),
                              Text(
                                'Share',
                                style : GoogleFonts.inter(
                                  fontSize : 40,
                                  fontWeight : FontWeight.w800,
                                  color : const Color(0xff6C63FF),
                                ),
                              ),

                            ],
                          ),
                        ),

                        const SizedBox( height : 23,),
                        
                        Padding(
                          padding : const EdgeInsets.fromLTRB(33 , 0, 64, 0),
                          child : Text(
                              "Empower you campus community! Lend, borrow, repeat with ease!",
                              style : GoogleFonts.poppins(
                                fontSize : 15, 
                              ),
                            ),
                        ),
                        

                        
                        const SizedBox(height : 63),



                        //button Get started
                       
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder:(context) =>  const SignUp(),
                              )
                            );
                          },
                          child : Container(
                            padding : const EdgeInsets.only(top : 17, bottom : 17),
                            margin : const EdgeInsets.only(left : 33, top : 17, bottom : 17, right : 33),
                            decoration : BoxDecoration(
                              color : const Color(0xff1E1E1E),
                              borderRadius : BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment : MainAxisAlignment.center,
                              children: [
                                Text('Get started',
                                  style : GoogleFonts.inter(
                                    fontSize : 20,
                                    color : Colors.white,
                                  ),
                                ),

                                const SizedBox(width : 24,),

                                SvgPicture.asset(
                                  'lib/svg/Arrow.svg',
                                  width : 21.88,
                                  height : 21.32,
                                ),
                              ],
                            ),
                          ),
                        )

                      ],
                    ),
                  ),
                ),

            ),
      );
  }
}