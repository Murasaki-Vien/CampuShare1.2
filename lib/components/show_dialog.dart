import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';


class MyDialog extends StatelessWidget{
  final String text;
  final double dialogSize;
  const MyDialog({
      super.key,
      required this.text,
      required this.dialogSize
    }
  );

  @override
  Widget build(BuildContext context){
    return AlertDialog(
      backgroundColor : Colors.deepPurple[400],
      scrollable : true,
      content : SizedBox(
        height : dialogSize,
        child : Center(
          child: Column(
              mainAxisAlignment : MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "WARNING:",
                  style : GoogleFonts.poppins(
                    color : Colors.red,
                    fontWeight : FontWeight.bold,
                  ),
                ),
                Text(
                  text,
                  //"There are no inputs either on Name, Email or Password. Please Check carefully!",
                  textAlign : TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight : FontWeight.bold,
                  ),
                ),

                const Divider(
                  color : Colors.grey,
                  thickness : 2,
                ),

                const SizedBox(height : 2,),
                //warning image
                  SvgPicture.asset(
                  'lib/svg/exclamation.svg',
                )
              ],
            ),
        )
      )
    );
  }
}