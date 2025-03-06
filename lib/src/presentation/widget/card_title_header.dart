import 'package:flutter/material.dart';

class CardTitleHeader extends StatelessWidget {
  final Image image;
  final double fontSize;
  final String text;
  final double height;

  const CardTitleHeader(
      {super.key,
      required this.image,
      required this.fontSize,
      required this.text,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      color: Colors.white,
      child: Stack(alignment: Alignment.center, children: [
        Center(
          child: Text(text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              )),
        ),
        Positioned(
          left: 0,
          top: 0,
          child: Container(
            margin: const EdgeInsets.only(left: 8.0, top: 8.0),
            height: 20,
            width: 20,
            child: image,
          ),
        )
      ]),
    );
  }
}
