import 'package:flutter/material.dart';

class MyChatPage extends StatefulWidget {
  const MyChatPage({super.key});

  @override
  State<MyChatPage> createState() => _MyChatPageState();
}

class _MyChatPageState extends State<MyChatPage> {
  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      body : SafeArea(
        child : Center(
          child : SingleChildScrollView(
            child : Text('For Chatting page Section'),
          )
        ),
      ),
    );
  }
}