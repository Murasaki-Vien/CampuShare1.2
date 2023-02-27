import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proj3/homepage/homepage.dart';
import 'package:proj3/Authentication/verification.dart';
import 'package:proj3/homepage/homepage_bottom_nav.dart';

import '../components/buttons.dart';

class VerifyEmailPage extends StatefulWidget {
  const VerifyEmailPage({Key? key}) : super(key: key);

  @override
  State<VerifyEmailPage> createState() => _VerifyEmailPageState();
}

class _VerifyEmailPageState extends State<VerifyEmailPage> {
  bool isEmailVerified = false;
  Timer? timer;

  @override
  void initState() {
    super.initState();

    isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;

    if (!isEmailVerified) {
      sendVerificationEmail();

      timer = Timer.periodic(
        Duration(seconds: 3),
            (_) => checkEmailVerified(),
      );
    }
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  Future checkEmailVerified() async {
    await FirebaseAuth.instance.currentUser!.reload();

    setState(() {
      isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;
    });

    if (isEmailVerified) timer?.cancel();
  }

  Future sendVerificationEmail() async {
    try {
      final user = FirebaseAuth.instance.currentUser!;
      await user.sendEmailVerification();
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) =>
      isEmailVerified
          ? MyBottomNavBar()
          : MyVerif();


/*
  Widget build(BuildContext context) {
    if (isEmailVerified == true) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Stack(
            children: [
              Container(
                  padding: const EdgeInsets.fromLTRB(50, 15, 50, 15),
                  height: 150,
                  decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Row(
                    children: [
                      //const SizedBox(width: 60),
                      Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              SizedBox(height: 5),
                              Text(
                                "Redirecting...",
                                style: TextStyle(
                                    fontSize: 24),
                              ),
                              SizedBox(height: 8,),
                              Text(
                                //"yes",
                                'Your email address has been verified',
                                style: TextStyle(
                                    fontSize: 20
                                ),
                              )
                            ],
                          )
                      )
                    ],
                  )
              ),
            ],
          ),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      );
      Timer(Duration(seconds: 3), () {
        const MyBottomNavBar();
      });

    } else {
      MyVerif();
    }
    return const SizedBox();

 */
/*
  Widget build(BuildContext context) => isEmailVerified
      ? Scaffold(
          backgroundColor: const Color(0xff6C63FF),
          body: Column(
            children: [
              const SizedBox(height: 256),
              Center(
                child: Text(
                    "You email has been verified",
                    style:  GoogleFonts.inter(
                      fontSize: 20,
                      color: Colors.white,
                    )
                ),
              ),
              const SizedBox(height: 196),
              GestureDetector(
                onTap : (){
                  print("object");
                  MyBottomNavBar()
                  },
                child : const MyButton(
                  buttonName : 'Continue',
          ),
        ),
      ],
    )
  )
  : MyVerif();

 */
}