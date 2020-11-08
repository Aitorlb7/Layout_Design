import 'package:flutter/material.dart';

class IconInfo extends StatelessWidget {
  final String image;
  final Color box_color;

  IconInfo({
    @required this.image,
    @required this.box_color,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: box_color,
      ),
      child: Image.asset(
        '$image',
        scale: 1.3,
      ),
    );
  }
}
