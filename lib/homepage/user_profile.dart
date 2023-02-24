import 'package:flutter/material.dart';

class MyUserProfile extends StatefulWidget {
  const MyUserProfile({super.key});

  @override
  State<MyUserProfile> createState() => _MyUserProfileState();
}

class _MyUserProfileState extends State<MyUserProfile> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body : SafeArea(
          child : Center(
            child: SingleChildScrollView(child : Text ("User profile Page"),
            ),
          )
        ),
      
    );
  }
}