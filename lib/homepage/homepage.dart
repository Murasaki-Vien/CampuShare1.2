import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proj3/components/search_bar.dart';
import 'package:proj3/components/categbuttons.dart';
import 'package:proj3/components/lend_borrow.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:proj3/homepage/calendar.dart';



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
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomInset : false,
      body : SafeArea(
        child : SingleChildScrollView(
          child : Column(
            children: [
              Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: AspectRatio(
                      aspectRatio : 18/9,
                      child: SvgPicture.asset(
                          'lib/svg/rectangle.svg',
                        ),
                    ),
                  ),

                  Padding(
                    padding : const EdgeInsets.fromLTRB(18, 10, 18, 0),
                    child : Row(
                      mainAxisAlignment : MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset('lib/svg/menutab.svg',
                          height : 19.43,
                          width : 17,
                        ),
                        SvgPicture.asset('lib/svg/bellicon.svg',
                          height : 20.13,
                          width : 23,
                        ),
                      ],
                    ),
                  ),
                 
                  //header
                  Center(
                    child: Padding(
                      padding : const EdgeInsets.fromLTRB(0, 52, 0, 46),
                      child: Column(
                        children: [
                          Text(
                            "Lend, borrow, repeat",
                            style : GoogleFonts.poppins(
                              fontSize : 20,
                              color : Colors.white,
                              fontWeight : FontWeight.bold, 
                            ),
                          ),
                          
                        
                          Text(
                            'with ease!',
                            style : GoogleFonts.poppins(
                              fontSize : 20,
                              color : Colors.black,
                              fontWeight : FontWeight.bold, 
                            )
                          ),
                        ],
                      ),
                    ),
                  ),

                  //search bar
                  Center(
                    child : Padding(
                      padding : const EdgeInsets.fromLTRB(45, 148, 45, 0),
                      
                        child : MysearchBar(
                          controller: searchController,
                          hinttext : "Search for Everything",
                          icon : const Icon(Icons.search,
                            color : Color(0xffA5A3A3)
                          )
                        )
                      
                    ),
                  ),
                ], 
              ),

              //categories
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left : 26, top : 28),
                    child: Text(
                      "Categories",
                      style : GoogleFonts.poppins(
                        fontSize : 15
                      ),
                    ),
                  ),
                  
                ],
              ),

              //buttons under categories 
              Padding(
                padding: const EdgeInsets.fromLTRB(28, 11, 28, 0),
                child: Row(
                  mainAxisAlignment : MainAxisAlignment.spaceBetween,
                  children: [
                    
                    MyCategoryBtn(
                      btnName: "Textbooks", 
                      svgName: 'lib/svg/book-alert-outline.svg',
                      btnClicked: btnClicked,
                    ),
                    MyCategoryBtn(
                      btnName: "Electronics", 
                      svgName: 'lib/svg/electronics-logo.svg',
                      btnClicked: btnClicked,
                    ),
                    MyCategoryBtn(
                      btnName: "Sports", 
                      svgName: 'lib/svg/sports-logo.svg',
                      btnClicked: btnClicked,
                    ),
                    MyCategoryBtn(
                      btnName: "Music", 
                      svgName: 'lib/svg/music-logo.svg',
                      btnClicked: btnClicked,
                    ),
                  ],
                ),
              ),


              //Lend Listings and Borrow Listings
              const SizedBox(height : 20),
              const Divider(
                thickness: 1,
                color : Colors.black,
              ),
              Row(
                mainAxisAlignment : MainAxisAlignment.spaceEvenly,
                children: [
                  
                  GestureDetector(
                    onTap : (){
                      setState(() {
                        borrowisClicked = false; //remove the color of borrow req
                        lendisClicked = !lendisClicked; //highlight the Lend list
                        textName = 'listings';
                      });
                      print("Test for Lend");
                    }, 
                    child : Mylendborrowoptn(
                      lBName: "Lend Listings",
                      lendBorrowisClicked : lendisClicked,
                    ),
                     
                  ),

                  GestureDetector(
                    onTap : (){
                      setState(() {
                        lendisClicked = false; //remove color Lend List
                        borrowisClicked = !borrowisClicked; //highlight the lend list 
                        textName = 'requests';
                      });
                      print("Test for Borrow");
                    }, 
                    child : Mylendborrowoptn(
                      lBName: "Borrow Request",
                      lendBorrowisClicked : borrowisClicked,
                    ),
                     
                  ),

                  
                ],
              ),
              const Divider(
                thickness: 1,
                color : Colors.black,
              ),


              const SizedBox(height : 38),
              SvgPicture.asset('lib/svg/no_items-logo.svg'),
              Text(
                "No $textName yet.",
                style : GoogleFonts.poppins(
                  fontSize : 15, 
                ),
              ),

              
              
              
            ],
          ),
          
        ),
      ),

      
      
      // for bottom Navigation
      
      

    );
  }
}

//new page for calendar
