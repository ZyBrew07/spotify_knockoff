import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  final int listSize;
  final Widget Function(int index) onChildrenLayout;

  const ListWidget({
    super.key,
    this.listSize = 0,
    required this.onChildrenLayout,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 350,
        child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: listSize,
            itemBuilder: (context, index) => Container(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: SizedBox(
                    width: 250,
                    height: 330,
                    child: ListView(
                      children: <Widget>[
                        onChildrenLayout(index)
                      ],
                    ),
                  ),
                ),
            separatorBuilder: (context, index) => const SizedBox(
                  height: 10,
                )));
  }
}
