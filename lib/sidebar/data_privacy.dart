import 'package:flutter/material.dart';

class DataPrivacyPage extends StatelessWidget {
  const DataPrivacyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
          appBar: AppBar(
        title: const Text(
          'Data Privacy',
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColor: Colors.white60,
      ));
}
