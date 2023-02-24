import 'package:flutter/material.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
          appBar: AppBar(
        title: const Text(
          'Stay in touch!',
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColor: Colors.white60,
      ));
}
