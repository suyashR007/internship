import 'package:flutter/material.dart';

class ImageDisplay extends StatelessWidget {
  final String imageString;
  const ImageDisplay({
    required this.imageString,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Image.asset(
        imageString,
        fit: BoxFit.fill,
      ),
    );
  }
}
