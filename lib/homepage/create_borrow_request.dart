import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proj3/components/dropdown_List.dart';
import 'package:proj3/homepage/homepage.dart';

import '../components/add_input_box.dart';
import '../components/buttons.dart';
import '../components/categbuttons.dart';
import '../components/logo.dart';

class AddBorrowRequest extends StatefulWidget {
  const AddBorrowRequest({super.key});

  @override
  State<AddBorrowRequest> createState() => _AddBorrowRequest();
  
  void onClicked() {}
}

class _AddBorrowRequest extends State<AddBorrowRequest> {
    get productName => null;
    
      get productCategory => null;
      
        get productDescription => null;
        
          double _LendDuration = 1;
          

  @override
  Widget build(BuildContext context) {
    var btnClicked;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const BackButton(
          color: Colors.black,
        ),
        centerTitle: false,
        title: const Text('Borrow Request', style: TextStyle(color: Colors.black)),
        actions: const <Widget>[],
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        ),
        body : SingleChildScrollView(
          child: Center(
            child : Column(
                children: [

                  const SizedBox(height : 26),

                  Padding(
                    padding: const EdgeInsets.only(left : 15, right : 22, top : 0, bottom : 0),
                    child: Row(
                      mainAxisAlignment : MainAxisAlignment.start,
                      children: [
                        Text(
                          "Product Name",
                          style : GoogleFonts.poppins(
                          fontSize : 15,
                          fontWeight : FontWeight.w500 
                          ),
                        ),
                      ],
                    ),
                  ),

                  AddInputBox(
                    controller: productName,
                    hintText: 'Product name',
                    obscureText: false,
                  ),
                  const SizedBox(height : 16),


                   Padding(
                    padding: const EdgeInsets.only(left : 15, right : 22, top : 0, bottom : 0),
                    child: Row(
                      mainAxisAlignment : MainAxisAlignment.start,
                      children: [
                        Text(
                          "Category",
                          style : GoogleFonts.poppins(
                          fontSize : 15,
                          fontWeight : FontWeight.w500 
                          ),
                        ),
                      ],
                    ),
                  ),

                  const Dropdown_List(),
                  const SizedBox(height : 16),

                  Padding(
                    padding: const EdgeInsets.only(left : 15, right : 22, top : 0, bottom : 0),
                    child: Row(
                      mainAxisAlignment : MainAxisAlignment.start,
                      children: [
                        Text(
                          "Description",
                          style : GoogleFonts.poppins(
                          fontSize : 15,
                          fontWeight : FontWeight.w500 
                          ),
                        ),
                      ],
                    ),
                  ),

                  AddInputBox(
                    controller: productDescription,
                    hintText: 'Description',
                    obscureText: false,
                  ),
                  const SizedBox(height : 16),


                  Padding(
                    padding: const EdgeInsets.only(left : 15, right : 22, top : 0, bottom : 0),
                    child: Row(
                      mainAxisAlignment : MainAxisAlignment.start,
                      children: [
                        Text(
                          "Borrow Duration",
                          style : GoogleFonts.poppins(
                          fontSize : 15,
                          fontWeight : FontWeight.w500 
                          ),
                        ),
                      ],
                    ),
                  ),

                  Slider(
                    activeColor: const Color(0xFF9E9E9E),
                    inactiveColor: const Color(0xFF9E9E9E),
                    thumbColor: const Color(0xFF6C63FF),
                    min: 1,
                    max: 365,
                    value: _LendDuration,
                    onChanged: (newRating) {
                      setState(() => _LendDuration = newRating);
                    },
                    divisions: 364,
                    label: '$_LendDuration days'
                  ),
                  
                const SizedBox(height : 166),

                  //Log In btn
                 ElevatedButton(
                    style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    ),
                      primary: const Color(0xff6C63FF),
                      padding: const EdgeInsets.symmetric(
                      horizontal: 39, vertical: 5),
                    ),
                    onPressed: () {
                            // Handle first menu option
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Myhomepage(),
                    )
                    );
                    },
                   child: Text(
                    'Create Borrow Request',
                     style: GoogleFonts.poppins(
                       fontSize: 16.5,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  const SizedBox(height : 30),
                  //already have an account
                  
                ]
            ),
          ),
        ),
      ),
    );
  }
}
