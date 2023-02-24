import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proj3/components/input_box.dart';
import 'package:proj3/components/buttons.dart';
import 'package:proj3/components/logo.dart';
import 'package:proj3/login/log_in.dart';
import 'package:proj3/signUp/verification.dart';
import 'package:proj3/components/show_dialog.dart';

class SignUp extends StatefulWidget {
  
  const SignUp({
    super.key,
  });

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
                            style : GoogleFonts.inter(
                              fontSize : 20, 
                              fontWeight :FontWeight.w500,   
                            )
                          ),
                        ],
                      ),
                    ),
                    
                    const SizedBox(height : 18),

                    //Name
                    InputBox(
                      controller: userNameController, 
                      hintText: 'Input Name', 
                      obscureText: false,
                    ),
                    
                    //email
                    InputBox(
                      controller: userEmailController, 
                      hintText: 'Input Email', 
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
                            style : GoogleFonts.inter(
                              fontSize : 13
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height : 49),


                    //Sign up button
                    GestureDetector(
                      onTap : (){
                          if((userNameController.text == '') || 
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
                        
                      },
                      child : MyButton(
                        isChecked : isChecked,
                        buttonName : 'Sign Up',
                      ),
                    ),

                    const SizedBox(height : 40),


                    //or sign up with
                    Row(
                      children: [
                        Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left : 22.0),
                              child: Divider(
                                color: Colors.grey[400],
                                thickness : 2,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Text(
                              'Or Sign up with',
                              style : GoogleFonts.inter(
                                textStyle : TextStyle(color : Colors.grey[700]),
                                fontSize : 13,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right : 22.0),
                              child: Divider(
                                  color: Colors.grey[400],
                                  thickness : 2,
                                ),
                            ),
                          ),
                      ],
                    ),

                    const SizedBox(height : 30),

                    //logo
                    Row(
                      mainAxisAlignment : MainAxisAlignment.center,
                      children : [
                  
                        //facebook logo
                        InkWell(
                          child : const MyLogo(
                            image : 'lib/svg/facebook.svg',
                          ),
                          onTap : (){
                            print('Facebook Logo');
                          },
                        ),
                       
                        
                        const SizedBox(width : 16),
                  
                        //google logo
                        InkWell(
                          child : const MyLogo(
                            image: 'lib/svg/Google.svg',
                          ),
                          onTap : (){
                            print('Google Logo');
                          }
                        ),
                        
                  
                        const SizedBox(width : 16),
                          
                        //Apple logo
                        InkWell(
                          child : const MyLogo(
                            image: 'lib/svg/Apple.svg',
                          ),
                          onTap : (){
                            print('Apple Logo');
                          }
                        ),
                      ],
                    ),
                    
                    
                    const SizedBox(height : 32),
                    //already have an account
                    Row(
                      mainAxisAlignment : MainAxisAlignment.center,
                      children: [
                        Text(
                          'Have an account?',
                          style : GoogleFonts.inter(textStyle : const TextStyle(
                            fontSize : 13, 
                            )
                          ),
                        ),
                        GestureDetector(
                          onTap : (){
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => Mylogin(),
                                ),
                            );
                          },
                          child : Text(
                          ' Log in',
                          style : GoogleFonts.inter(textStyle : const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color : Color(0xFF6C63FF),
                          )),
                          
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