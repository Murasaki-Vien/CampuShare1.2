import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proj3/components/buttons.dart';
import 'package:proj3/components/input_box.dart';
import 'package:proj3/components/logo.dart';
import 'package:proj3/components/show_dialog.dart';
import 'package:proj3/homepage/homepage.dart';

import '../main.dart';

class SignIn extends StatefulWidget {
  final VoidCallback onClickedSignUp;

  const SignIn({
    Key? key,
    required this.onClickedSignUp,
  }) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final userEmailController = TextEditingController();
  final passwordController = TextEditingController();

  Future signIn() async {
    //showDialog(
    //    context: context,
    //    barrierDismissible: false,
    //    builder: (context) => const Center(child: CircularProgressIndicator())
    //);

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: userEmailController.text.trim(),
          password: passwordController.text.trim()
      );
    } on FirebaseAuthException catch (e) {
      print(e);
      showDialog(
        context: context,
        builder : (context){
          return const MyDialog(
            text : "There are no inputs either on Email or Password. Please Check carefully!",
            dialogSize : 138,
          );
        }
      );
    }

    //navigatorKey.currentState!.popUntil((route) => '/wrapper');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body : SingleChildScrollView(
          child: Center(
            child : Column(
                children: [

                  const SizedBox(height : 16),

                  //create account
                  Padding(
                    padding: const EdgeInsets.only(left : 15, right : 22, top : 0, bottom : 0),
                    child: Row(
                      mainAxisAlignment : MainAxisAlignment.start,
                      children: [
                        Text(
                            'Log In',
                            style : GoogleFonts.poppins(
                              fontSize : 20,
                              fontWeight :FontWeight.w500,
                            )
                        ),
                      ],
                    ),
                  ),

                  const MyLogo(
                    image: 'lib/svg/log_inLogo.svg', 
                    widthSize: 224, 
                    heightSize: 167
                  ),

                  const SizedBox(height : 16),

                  Text(
                    "We’re happy to have you back!",
                    style : GoogleFonts.poppins(
                      fontSize : 15,
                      fontWeight : FontWeight.w500 
                    ),  
                  ),

                  const SizedBox(height : 30),

                  InputBox(
                    controller: userEmailController,
                    hintText: 'Enter User Email',
                    obscureText: false,
                  ),

                  InputBox(
                    controller: passwordController,
                    hintText: 'Enter Password',
                    obscureText: true,
                  ),

                  const SizedBox(height : 76),

                  //Log In btn
                  GestureDetector(
                    onTap : (){
                      signIn();
                      /*
                        if((userEmailController.text == '') ||
                        (passwordController.text == '')){

                          showDialog(
                            context: context,
                            builder : (context){
                              return const MyDialog(
                                text : "There are no inputs either on Email or Password. Please Check carefully!",
                              );
                            }
                          );
                        }
                        if((userEmailController.text != '' ) ||
                        (passwordController.text != '')){

                          if((userEmailController.text == "neil@gmail.com") && (passwordController.text == "12345")){
                            Navigator.of(context).push(
                              MaterialPageRoute(builder : (context) =>  const Myhomepage()),
                            );
                          }
                          print('Incorrect Password or Email');
                        }
                        print(userEmailController.text);
                        print(passwordController.text);
                        */
                    },
                    child : const MyButton(
                      buttonName : 'Log In',
                    ),
                  ),

                  const SizedBox(height : 30),
                  //already have an account
                  Row(
                    mainAxisAlignment : MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style : GoogleFonts.poppins(textStyle : const TextStyle(
                          fontSize : 13,
                        )
                        ),
                      ),

                      GestureDetector(
                        onTap : () {
                          widget.onClickedSignUp();
                        },

                        child : Text(
                          ' Sign up',
                          style : GoogleFonts.poppins(
                              textStyle : const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color : Color(0xFF6C63FF),
                              )
                          ),

                        ),
                      ),
                    ],
                  ),
                ]
            ),
          ),
        ),
      ),
    );
  }
}
