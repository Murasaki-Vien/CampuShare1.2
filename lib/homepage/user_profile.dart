import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MyUserProfile extends StatefulWidget {
  const MyUserProfile({super.key});

  @override
  State<MyUserProfile> createState() => _MyUserProfileState();
}

class _MyUserProfileState extends State<MyUserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: <Widget>[
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(0),
                    child: SvgPicture.asset(
                      'lib/svg/rectangle.svg',
                    ),
                  ),
                ),

                /*profile picture*/
                Padding(
                  padding: const EdgeInsets.fromLTRB(113, 90, 105, 532.98),
                  child: Center(
                    child: Image.asset(
                      'lib/svg/profilepic.png',
                      height: 142,
                      width: 142,
                    ),
                  ),
                ),
                Center(
                    child: Padding(
                  padding: const EdgeInsets.fromLTRB(100, 250, 90, 532.98),
                  child: Column(
                    children: [
                      Text(
                        "Charles Henricks",
                        overflow: TextOverflow.visible,
                        softWrap: false,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'akochoy123@gmail.com',
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                )),
                Padding(
                  padding: const EdgeInsets.fromLTRB(45, 320, 50, 50),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Listings',
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            color: Color(0xFF9E9E9E),
                          ),
                        ),
                        Text(
                          'Requests',
                          overflow: TextOverflow.visible,
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            color: Color(0xFF9E9E9E),
                          ),
                        ),
                        Text(
                          'Rating',
                          overflow: TextOverflow.visible,
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            color: Color(0xFF9E9E9E),
                          ),
                        ),
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(60, 350, 60, 50),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '10',
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            color: Color(0xFF9E9E9E),
                          ),
                        ),
                        Text(
                          '10',
                          overflow: TextOverflow.visible,
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            color: Color(0xFF9E9E9E),
                          ),
                        ),
                        Text(
                          '4.5',
                          overflow: TextOverflow.visible,
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            color: Color(0xFF9E9E9E),
                          ),
                        ),
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 370, 0, 50),
                  child: const Divider(
                    thickness: 1,
                    color: Color(0xFF9E9E9E),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 380, 40, 50),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Listings ',
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Requests ',
                        overflow: TextOverflow.visible,
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'About',
                        overflow: TextOverflow.visible,
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(98, 540, 98, 226),
                  child: Column(children: [
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
                          color: Color(0xff6C63FF),
                        )),
                  ]),
                )
              ],
            ),
          ],
        ),
      )),
    );
  }
}
