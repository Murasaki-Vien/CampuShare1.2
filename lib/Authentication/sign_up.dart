import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proj3/components/input_box.dart';
import 'package:proj3/components/buttons.dart';
import 'package:proj3/components/logo.dart';
import 'package:proj3/Authentication/verification.dart';
import 'package:proj3/components/show_dialog.dart';
import '../main.dart';

class SignUp extends StatefulWidget {
  final Function() onClickedSignIn;


  const SignUp({
    Key? key,
    //super.key,

    required this.onClickedSignIn,
  }) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  //for the checkbox
  bool isChecked = false;

  //text editing
  final userNameController = TextEditingController();
  final userEmailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context){
    Color getColor(Set<MaterialState> states) {
      return const Color(0xFF6C63FF);
    }

    return Scaffold(
      resizeToAvoidBottomInset : false,
      backgroundColor : Colors.white,
      body : SingleChildScrollView(
        child : SafeArea(
          child: Center(
            child : Column(
              mainAxisAlignment : MainAxisAlignment.end,
              children: [
                const SizedBox(height : 16),

                //create account
                Padding(
                  padding: const EdgeInsets.only(left : 15, right : 22, top : 0, bottom : 0),
                  child: Row(
                    mainAxisAlignment : MainAxisAlignment.start,
                    children: [
                      Text(
                          'Create Account',
                          style : GoogleFonts.poppins(
                            fontSize : 20,
                            fontWeight :FontWeight.w500,
                          )
                      ),
                    ],
                  ),
                ),

                const SizedBox(height : 20),    

                const MyLogo(
                  image: 'lib/svg/create_accLogo.svg',
                  widthSize : 273,
                  heightSize : 141,
                ),

                const SizedBox(height : 20),

                //Name
                InputBox(
                  controller: userNameController,
                  hintText: 'Gabriel Russel M. Dela Pena',
                  obscureText: false,
                ),

                //email
                InputBox(
                  controller: userEmailController,
                  hintText: 'example@gmail.com',
                  obscureText: false,
                ),

                //password
                InputBox(
                  controller: passwordController,
                  hintText: 'Input Password',
                  obscureText: true,
                ),

                const SizedBox(height : 33),
                //Agree to terms and conditions
                Container(
                  padding : const EdgeInsets.fromLTRB(6, 0, 0, 0),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value : isChecked,
                        onChanged : (bool? value) {
                          setState((){
                            isChecked = value!;
                          }
                          );
                        },
                      ),
                      Text('I agree to the terms and conditions',
                        style : GoogleFonts.poppins(
                            fontSize : 13
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height : 49),


                //Sign up button
                GestureDetector(
                  onTap : () {
                    signUp();
                    /* if((userNameController.text == '') ||
                        (userEmailController.text == '' ||
                        (passwordController.text == ''))){
                          showDialog(
                              context: context,
                              builder: (context){
                                return const MyDialog(
                                  text : "There are no inputs either on Name, Email or Password. Please Check carefully!",
                                );
                              },
                            );
                        }
                        else if(isChecked){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => MyVerif()),
                          );
                        }
                        print(userNameController.text);
                        print(userEmailController.text);
                        print(passwordController.text);
                        */
                  },
                  child : MyButton(
                    isChecked : isChecked,
                    buttonName : 'Sign Up',
                  ),
                ),

                const SizedBox(height : 27),

                //already have an account
                Row(
                  mainAxisAlignment : MainAxisAlignment.center,
                  children: [
                    Text(
                      'Have an account?',
                      style : GoogleFonts.poppins(textStyle : const TextStyle(
                        fontSize : 13,
                      )
                      ),
                    ),
                    GestureDetector(
                      onTap : widget.onClickedSignIn,
                      child : Text(
                        ' Log in',
                        style : GoogleFonts.poppins(textStyle : const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color : Color(0xFF6C63FF),
                        )),

                      ),
                    ),
                  ],
                ),
                
                const SizedBox(height : 56),
              ]

            ),
          ),
        ),
      ),
    );
  }

  Future signUp() async {
    //showDialog(
    //    context: context,
    //    barrierDismissible: false,
    //    builder: (context) => const Center(child: CircularProgressIndicator())
    //);

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: userEmailController.text.trim(),
        password: passwordController.text.trim()
      );
    } on FirebaseAuthException catch (e) {
      print(e);
      showDialog(
        context: context,
        builder: (context){
          return const MyDialog(
            text : "There are no inputs either on Name, Email or Password. Please Check carefully!",
            dialogSize : 162,
          );
        },
      );
      //Utils.showSnackBar(e.message);
    }

    //navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }
}