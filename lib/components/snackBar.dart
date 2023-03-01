import 'package:flutter/material.dart';

class CustomSnackBarContent extends StatelessWidget {
  const CustomSnackBarContent({
    Key? key,
    required this.errorText
  }) : super(key: key);

  final String errorText;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            padding: const EdgeInsets.fromLTRB(50, 15, 50, 15),
            height: 150,
            decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            child: Row(
              children: [
                //const SizedBox(width: 60),
                Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 5),
                        const Text(
                          "Oh snap!",
                          style: TextStyle(
                              fontSize: 24),
                        ),
                        const SizedBox(height: 8,),
                        Text(
                          //"yes",
                          errorText,
                          style: const TextStyle(
                              fontSize: 20
                          ),
                        )
                      ],
                    )
                )
              ],
            )
        ),
      ],
    );
  }
}
