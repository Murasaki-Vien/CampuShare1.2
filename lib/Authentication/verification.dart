import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:proj3/components/logo.dart';

class MyVerif extends StatelessWidget {
  MyVerif({super.key});

  final code1 = TextEditingController();
  final code2 = TextEditingController();
  final code3 = TextEditingController();
  final code4 = TextEditingController();
  final code5 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffFFFFFF),
      body: Form(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 241,
                  ),
                  SizedBox(
                    child: Center(
                        child: Column(
                      children: [
                        const MyLogo(
                          image: 'assets/svg/verification_mail.svg',
                          widthSize: 161,
                          heightSize: 145,
                        ),
                        const SizedBox(height: 60),
                        SizedBox(
                          height: 64,
                          width: 330,
                          child: Text(
                            "We've sent  a verification link to your account. Kindly check!",
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 15),
                        SizedBox(
                          height: 48,
                          width: 251,
                          child: Text(
                            "Glad to have you here with us at CampuShare!",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Colors.grey.shade900,
                              fontWeight: FontWeight.w100,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    )),
                  ),

                  /*
                    //for the verification part
                    Form(
                      child : Padding(
                        padding: const EdgeInsets.fromLTRB(15, 63, 13, 46),
                        child: Row(
                          mainAxisAlignment : MainAxisAlignment.spaceBetween,
                          children:  [
            
                            //first textField
                            SizedBox(
                              height : 48,
                              width : 48,
                              child: TextFormField(
                                onChanged : (value) {
                                  if (value.length == 1){
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                controller : code1,
                                textAlign : TextAlign.center,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                                keyboardType : TextInputType.number,
                                decoration : const InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5),),
                                    borderSide : BorderSide(
                                      color : Color(0xffCCCCCC),
                                      width : 2,
                                    )
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5),),
                                    borderSide : BorderSide(
                                      color : Color(0xffCCCCCC),
                                      width : 2,
                                    )
                                  ),
                                  fillColor : Color(0xffCCCCCC),
                                  filled : true,
            
                                ),
                              ),
                            ),
            
                            //Second textFormField
                            SizedBox(
                              height : 48,
                              width : 48,
                              child: TextFormField(
                                onChanged : (value) {
                                  if (value.length == 1){
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                controller : code2,
                                textAlign : TextAlign.center,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                                keyboardType : TextInputType.number,
                                decoration : const InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5),),
                                    borderSide : BorderSide(
                                      color : Color(0xffCCCCCC),
                                      width : 2,
                                    )
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5),),
                                    borderSide : BorderSide(
                                      color : Color(0xffCCCCCC),
                                      width : 2,
                                    )
                                  ),
                                  fillColor : Color(0xffCCCCCC),
                                  filled : true,
            
                                ),
                              ),
                            ),
            
                            //third textFormField
                            SizedBox(
                              height : 48,
                              width : 48,
                              child: TextFormField(
            
                                onChanged : (value) {
                                  if (value.length == 1){
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                controller : code3,
                                textAlign : TextAlign.center,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                                keyboardType : TextInputType.number,
                                decoration : const InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5),),
                                    borderSide : BorderSide(
                                      color : Color(0xffCCCCCC),
                                      width : 2,
                                    )
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5),),
                                    borderSide : BorderSide(
                                      color : Color(0xffCCCCCC),
                                      width : 2,
                                    )
                                  ),
                                  fillColor : Color(0xffCCCCCC),
                                  filled : true,
                                ),
                              ),
                            ),
            
                            //fourth textFormField
                            SizedBox(
                              height : 48,
                              width : 48,
                              child: TextFormField(
                                onChanged : (value) {
                                  if (value.length == 1){
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                controller : code4,
                                textAlign : TextAlign.center,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                                keyboardType : TextInputType.number,
                                decoration : const InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5),),
                                    borderSide : BorderSide(
                                      color : Color(0xffCCCCCC),
                                      width : 2,
                                    )
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5),),
                                    borderSide : BorderSide(
                                      color : Color(0xffCCCCCC),
                                      width : 2,
                                    )
                                  ),
                                  fillColor : Color(0xffCCCCCC),
                                  filled : true,
            
                                ),
                              ),
                            ),
            
                            //fifth textFormField
                            SizedBox(
                              height : 48,
                              width : 48,
                              child: TextFormField(
                                onChanged : (value) {
                                  if (value.length == 1){
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                controller : code5,
                                textAlign : TextAlign.center,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                                keyboardType : TextInputType.number,
                                decoration : const InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5),),
                                    borderSide : BorderSide(
                                      color : Color(0xffCCCCCC),
                                      width : 2,
                                    )
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5),),
                                    borderSide : BorderSide(
                                      color : Color(0xffCCCCCC),
                                      width : 2,
                                    )
                                  ),
                                  fillColor : Color(0xffCCCCCC),
                                  filled : true,
            
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
            
                    //Resend Code Section
                    GestureDetector(
                      child: Container(
                        margin : const EdgeInsets.only(left : 44, right : 45, bottom : 18),
                        padding: const EdgeInsets.only(top : 17, bottom : 17),
                        decoration : BoxDecoration(
                          color : Colors.white,
                          borderRadius : BorderRadius.circular(10),
                        ),
            
                        child: Row(
                          mainAxisAlignment : MainAxisAlignment.center,
                          children: [
                            Center(
                              child : Text('Resend Code',
                                      style : GoogleFonts.inter(
                                        fontSize : 20,
                                      )
                                    ),
                            ),
                          ],
                        ),
            
            
            
            
                      ),
                    ),
                    //Next Section
                    GestureDetector(
                      onTap : (){
                        final joinCode = (code1.text + code2.text + code3.text + code4.text + code5.text);
                        if(joinCode == ''){
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                "No Code inputted. Please Re-Enter"),
                            ),
                          );
                        }
                        else if(joinCode != ""){
                          if(joinCode == '12345'){
                            Navigator.of(context).push(
                              MaterialPageRoute(builder : (context) => const MyVerified()),
                            );
                          }
                          else if(joinCode != "12345"){
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                  "Verification code is incorrect"),
                              ),
                            );
                          }
                        }
            
                        print(joinCode);
                      },
                      child: Container(
                        margin : const EdgeInsets.only(left : 44, right: 45, bottom : 18),
                        padding : const EdgeInsets.only(top : 17, bottom : 17),
                        decoration : BoxDecoration(
                          color : const Color(0xffB593FF),
                          borderRadius : BorderRadius.circular(10),
                        ),
                        child : Center(
                            child: Text('Next',
                              style : GoogleFonts.inter(
                                color : Colors.white,
                                fontSize : 20,
                              ),
                            ),
                          ),
                      ),
                    ),
                */
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
