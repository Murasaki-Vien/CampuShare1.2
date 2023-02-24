import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/svg.dart';
import 'package:proj3/homepage/homepage.dart';



class MyVerified extends StatelessWidget{
  const MyVerified({super.key});

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body : SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child : Column(
              children:  [
                const SizedBox(height : 34),
                
                //Logo check
                SvgPicture.asset('lib/svg/veriflogo.svg'),
                

                //Email Text
                const SizedBox(height  : 109.43 ),
                Text(
                  'Email Address Verfied',
                  style : GoogleFonts.poppins(
                    fontSize : 24, 
                    fontWeight: FontWeight.bold
                  )
                  

                ),
                const SizedBox(height : 16),
                
                Container(
                margin : const EdgeInsets.fromLTRB(47, 0 , 62, 0  ),
                  child: Text(
                    'Congratulations, your account has been verified. You can start using the app',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      height: 1.5,    
                      color: Colors.grey[600],
                    )
                  ),
                ),

                  //Continue Button
                  const SizedBox(height : 109),

                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Myhomepage()));
                    },
                    child : Center(
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(108, 13, 108, 13),
                        
                        decoration: const  BoxDecoration(
                          color: Color(0xff6C63FF),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child:  Text(
                          'Continue',
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            color: Colors.white
                          
                          )
                      
                        ),
                      ),
                    ),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}