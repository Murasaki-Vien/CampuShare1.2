import 'package:flutter/material.dart';
import 'package:proj3/landing_page/landing_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme : ThemeData(
        primarySwatch : Colors.purple,
      ),
      home : const MyLandingPage(),
    );
  }
}