import 'package:flutter/material.dart';
import 'package:proj3/landing_page/landing_page.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      /*theme : ThemeData(
        primarySwatch : Colors.purple,
      ),*/
      home : MyLandingPage(),
  );
}