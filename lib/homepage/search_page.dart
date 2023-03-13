import 'package:flutter/material.dart';
import 'package:proj3/components/search_bar.dart';

class MySearchPage extends StatelessWidget {
  MySearchPage({super.key});
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : SafeArea(
        child : SingleChildScrollView(
          child : Column(
            children: [
              Container(
                padding : const EdgeInsets.fromLTRB(14, 9, 14, 9),
                color : const Color(0xffFFFFFF),
                height : 70,
                child : Center(
                    child : Row(
                      children: [

                        GestureDetector(
                          onTap : (){
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.arrow_back,
                            color :  Color(0xff6C63FF),
                          ),
                        ), 
                        const SizedBox(width : 18),
                        Expanded(
                          child : MysearchBar(
                            controller : searchController,
                            hinttext : 'search here',
                            enabled : true,
                            fillColor : const Color(0xffECECEC),
                            icon : const Icon(
                              Icons.search_sharp,
                              color : Color(0xff6C63FF),
                            )
                          ),
                        ),
                         
                        

                        
                              
                        //MysearchBar(
                        //  controller : searchController,
                        //  hinttext : 'search here',
                        //  enabled : true,
                        //  fillColor : const Color(0xffECECEC),
                        //  icon : const Icon(
                        //    Icons.search_sharp,
                        //    color : Color(0xff6C63FF),
                        //  )
                        //),
                        
                      ],
                    ),
                  
                ),
              ),
                  
            ],
          ),
        ),
      ),
    );
  }
}
