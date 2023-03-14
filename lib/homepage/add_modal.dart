import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../homepage/create_borrow_request.dart';
import '../homepage/create_lendlisting.dart';

class floatingButton extends FloatingActionButton {
  const floatingButton({super.key, required super.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor:  const Color(0xff6C63FF),
        tooltip: 'Add',
        child: const Icon(Icons.add),
        onPressed: (){
          showDialog(
          context: context,
          builder: (_) => Dialog(
              shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SizedBox(
                    height: 200.0,
                    width: 350.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.close),
                              onPressed: () {
                                Navigator.of(context, rootNavigator: true).pop(context);
                              
                              },
                            ),
                          ],
                        ),
                        Text(
                          'What do you want to do?',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        const SizedBox(height: 10.0),
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
                              builder: (context) => const AddLendListing(),
                            ));
                            Navigator.of(context, rootNavigator: true).pop();
                          },
                          child: Text(
                            'Create Lend Listing',
                            style: GoogleFonts.poppins(
                              fontSize: 16.5,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            primary: const Color(0xff6C63FF),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                          ),
                          onPressed: () {
                            // Handle second menu option
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>const AddBorrowRequest(),
                            ));
                            Navigator.of(context, rootNavigator: true).pop();
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
                      ],
                    ),
                )
          )
          );
        }     
      );
  }
}