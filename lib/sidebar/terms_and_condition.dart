import 'package:flutter/material.dart';

class TermsAndConditionPage extends StatelessWidget {
  const TermsAndConditionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
          appBar: AppBar(
        title: const Text(
          'Terms and Condition',
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColor: Colors.white60,
      ));
}
