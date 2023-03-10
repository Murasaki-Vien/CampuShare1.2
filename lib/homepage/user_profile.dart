import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proj3/components/list_req_about.dart';

import 'package:firebase_database/firebase_database.dart';
import 'package:proj3/components/database.dart';
import 'package:proj3/components/users.dart' as userPrefix;
//import 'package:provider/provider.dart';



class MyUserProfile extends StatefulWidget {
  const MyUserProfile({super.key});

  @override
  State<MyUserProfile> createState() => _MyUserProfileState();
}

class _MyUserProfileState extends State<MyUserProfile> {
  final user = FirebaseAuth.instance.currentUser!;

  bool listBtnClicked = false;
  bool reqBtnClicked = false;
  bool aboutBtnClicked = false;

  @override
  Widget build(BuildContext context) {

    //CollectionReference users = FirebaseFirestore.instance.collection('users').doc(user.uid);
    //final users = FirebaseFirestore.instance.collection('users').doc(user.uid);
    
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
          child: Column(
            children: [
              Stack(
                children: <Widget>[
                  Container(
                    height: 148.77,
                    decoration: const BoxDecoration(
                        color: Color(0xff6C63FF),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(48),
                          bottomRight: Radius.circular(48),
                        )),
                  ),

                  /*profile picture*/
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 79, 0, 0),
                    child: Center(
                      child: Image.asset(
                        'assets/svg/profilepic.png',
                        height: 142,
                        width: 142,
                      ),
                    ),
                  ),
                ],
              ),


              const SizedBox(height : 13),

              FutureBuilder<userPrefix.User?>(
                future: DatabaseService(uid: user.uid).readUser(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Text('Something went wrong!');
                  } else if (snapshot.hasData) {
                    final user = snapshot.data;
                    return user == null
                      ? Center(child: Text('No User'))
                      : Center(child: Text(user.name,
                        overflow: TextOverflow.visible,
                        softWrap: false,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,)
                      )
                      );
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                  //return CircularProgressIndicator();
                },
              ),

              SizedBox(
                height: 15,
                child: Text(
                  user.email!,
                  style: GoogleFonts.poppins(
                    fontSize: 10,
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const SizedBox(height: 6),
              Padding(
                padding: const EdgeInsets.only(right: 32, left: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Listings",
                            style: GoogleFonts.poppins(
                              fontSize: 10,
                              color: const Color(0xFF9E9E9E),
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            "10",
                            style: GoogleFonts.poppins(
                              fontSize: 10,
                              color: const Color(0xFF9E9E9E),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Request",
                            style: GoogleFonts.poppins(
                              fontSize: 10,
                              color: const Color(0xFF9E9E9E),
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            "10",
                            style: GoogleFonts.poppins(
                              fontSize: 10,
                              color: const Color(0xFF9E9E9E),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Ratings",
                            style: GoogleFonts.poppins(
                              fontSize: 10,
                              color: const Color(0xFF9E9E9E),
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            "4.8",
                            style: GoogleFonts.poppins(
                              fontSize: 10,
                              color: const Color(0xFF9E9E9E),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(0),
                child: Divider(
                  thickness: 1.5,
                  color: Color(0xFF9E9E9E),
                ),
              ),
              const SizedBox(height: 6),
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          listBtnClicked = true;
                          reqBtnClicked = false;
                          aboutBtnClicked = false;
                        });
                        print("List clicked");
                      },
                      child: MyListReqAboutoptn(
                        lRAName: "Listings",
                        listReqAboutisClicked: listBtnClicked,
                      ),
                    ),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            aboutBtnClicked = false;
                            listBtnClicked = false;
                            reqBtnClicked = !reqBtnClicked;
                          });
                          print("REQ clicked");
                        },
                        child: MyListReqAboutoptn(
                          lRAName: "Requests",
                          listReqAboutisClicked: reqBtnClicked,
                        )),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          listBtnClicked = false;
                          reqBtnClicked = false;
                          aboutBtnClicked = !aboutBtnClicked;
                        });
                        print("About clicked");
                      },
                      child: MyListReqAboutoptn(
                        lRAName: "About",
                        listReqAboutisClicked: aboutBtnClicked,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 160),
              Text('No lend listing made.',
                  overflow: TextOverflow.visible,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    height: 0.5,
                    color: Colors.black,
                  )),
              Text('Create now!',
                  overflow: TextOverflow.visible,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: const Color(0xff6C63FF),
                  )),
            ],
          ),
        ),
      )),
    );
  }
}
