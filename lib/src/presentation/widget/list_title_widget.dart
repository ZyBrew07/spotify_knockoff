import 'package:flutter/material.dart';

class ListTitleWidget extends StatelessWidget {
  final String? title;

  const ListTitleWidget({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 8.0, top: 8.0, right: 16.0),
      height: 50,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              margin: const EdgeInsets.only(left: 8.0, top: 8.0),
              height: 50,
              width: 150,
              child: Text(title ?? "",
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
