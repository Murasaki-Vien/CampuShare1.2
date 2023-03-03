import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proj3/components/search_bar.dart';
import 'package:proj3/components/categbuttons.dart';
import 'package:proj3/components/lend_borrow.dart';

import 'package:proj3/homepage/search_page.dart';
//side panel
import 'package:proj3/sidebar/help.dart';
import 'package:proj3/sidebar/data_privacy.dart';
import 'package:proj3/sidebar/terms_and_condition.dart';
import 'package:proj3/sidebar/contact_us.dart';

class Myhomepage extends StatefulWidget {
  const Myhomepage({
    super.key,
  });

  @override
  State<Myhomepage> createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  final searchController = TextEditingController();
  String textName = '';
  bool btnClicked = false;
  bool lendisClicked = false;
  bool borrowisClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,

      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff6C63FF),
      ),

      drawer: Drawer(
          child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
            buildHeader(context),
            buildMenuItems(context),
          ]))),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: <Widget>[
                  Container(
                    height: 179,
                    decoration: const BoxDecoration(
                        color: Color(0xff6C63FF),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(48),
                          bottomRight: Radius.circular(48),
                        )),
                  ),

                  //header
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 52, 0, 46),
                      child: Column(
                        children: [
                          Text(
                            "Lend, borrow, repeat",
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('with ease!',
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                    ),
                  ),

                  Center(
                    child: Padding(
                        padding: const EdgeInsets.fromLTRB(45, 148, 45, 0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => MySearchPage()));
                          },
                          child: MysearchBar(
                              controller: searchController,
                              hinttext: "Search for Everything",
                              icon: const Icon(Icons.search,
                                  color: Color(0xffA5A3A3))),
                        )),
                  ),
                ],
              ),

              //categories
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 26, top: 28),
                    child: Text(
                      "Categories",
                      style: GoogleFonts.poppins(fontSize: 15),
                    ),
                  ),
                ],
              ),

              //buttons under categories
              Padding(
                padding: const EdgeInsets.fromLTRB(28, 11, 28, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyCategoryBtn(
                      btnName: "Textbooks",
                      svgName: 'assets/svg/book-alert-outline.svg',
                      btnClicked: btnClicked,
                    ),
                    MyCategoryBtn(
                      btnName: "Electronics",
                      svgName: 'assets/svg/electronics-logo.svg',
                      btnClicked: btnClicked,
                    ),
                    MyCategoryBtn(
                      btnName: "Sports",
                      svgName: 'assets/svg/sports-logo.svg',
                      btnClicked: btnClicked,
                    ),
                    MyCategoryBtn(
                      btnName: "Music",
                      svgName: 'assets/svg/music-logo.svg',
                      btnClicked: btnClicked,
                    ),
                  ],
                ),
              ),

              //Lend Listings and Borrow Listings
              const SizedBox(height: 20),
              const Divider(
                thickness: 1,
                color: Colors.black,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        borrowisClicked =
                            false; //remove the color of borrow req
                        lendisClicked =
                            !lendisClicked; //highlight the Lend list
                        textName = 'listings';
                      });
                      print("Test for Lend");
                    },
                    child: Mylendborrowoptn(
                      lBName: "Lend Listings",
                      lendBorrowisClicked: lendisClicked,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        lendisClicked = false; //remove color Lend List
                        borrowisClicked =
                            !borrowisClicked; //highlight the lend list
                        textName = 'requests';
                      });
                      print("Test for Borrow");
                    },
                    child: Mylendborrowoptn(
                      lBName: "Borrow Request",
                      lendBorrowisClicked: borrowisClicked,
                    ),
                  ),
                ],
              ),

              const Divider(
                thickness: 1,
                color: Colors.black,
              ),

              const SizedBox(height: 38),
              SvgPicture.asset('assets/svg/no_items-logo.svg'),
              Text(
                "No $textName yet.",
                style: GoogleFonts.poppins(
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 500),
            ],
          ),
        ),
      ),

      // for bottom Navigation
    );
  }

  Widget buildHeader(BuildContext context) => Container(
          padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
      ));
}

Widget buildMenuItems(BuildContext context) => Container(
      padding: const EdgeInsets.all(24),
      child: Wrap(
        runSpacing: 5,
        children: [
          Column(children: [
            ListTile(
                leading: const Icon(Icons.help_center_rounded),
                title: const Text('Help'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const HelpPage(),
                  ));
                }),
            ListTile(
                leading: const Icon(Icons.lock_open),
                title: const Text('Data Privacy'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const DataPrivacyPage(),
                  ));
                }),
            ListTile(
                leading: const Icon(Icons.bookmark),
                title: const Text('Terms and Conditions'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const TermsAndConditionPage(),
                  ));
                }),
            ListTile(
                leading: const Icon(Icons.phone_callback),
                title: const Text('Contact Us'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ContactUsPage(),
                  ));
                }),
            const Divider(color: Colors.black54),
            const SizedBox(height: 265),
            ListTile(
                leading: const Icon(Icons.exit_to_app),
                title: const Text('Sign out'),
                onTap: () {
                  FirebaseAuth.instance.signOut();
                  // Navigator.of(context).push(
                  //  MaterialPageRoute(
                  //  builder:(context) => SignUp(onClickedSignIn :() => null,),
                  // )
                  // );
                  //Add logic for sign out
                }),
          ]),
        ],
      ),
    );
