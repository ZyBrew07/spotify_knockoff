import 'package:flutter/material.dart';


class CardTileNetworkImage extends StatelessWidget {
  final double height;
  final String url;

  const CardTileNetworkImage({super.key, this.height = 0.0, required this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: double.infinity,
        color: Colors.green,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.cover,
            alignment: FractionalOffset.center,
            image: NetworkImage(url),
          )),
        ));
  }
}