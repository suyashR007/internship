import 'package:flutter/material.dart';

import '../utils/colors.dart';

class FloatingButttonStyle extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final String text;
  const FloatingButttonStyle({
    required this.icon,
    required this.onPressed,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: screenSize.height * 0.08,
          width: screenSize.height * 0.08,
          child: FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: onPressed,
            child: Icon(
              icon,
              color: kPrimary,
              size: 35,
            ),
          ),
        ),
        SizedBox(
          height: screenSize.height * 0.01,
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 15),
        )
      ],
    );
  }
}
