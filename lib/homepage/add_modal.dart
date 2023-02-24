import 'package:flutter/material.dart';

class MyAddmodal extends StatelessWidget{
  const MyAddmodal ({super.key});

  @override 
  Widget build(BuildContext context){
    return const SafeArea(
      child: Center(
        child: Text(
          'For addind Modal'
        ),
      )
    );
  }
}