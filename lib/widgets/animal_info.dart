import 'package:flutter/material.dart';

class AnimalInfo extends StatelessWidget {
  final String image;
  final num value;
  final String name;
  AnimalInfo({
    @required this.image,
    @required this.value,
    @required this.name,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.all(
          Radius.circular(40),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 3),
            child: Image.asset(
              '$image',
              scale: 1.3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              '$value',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Roboto',
                color: Colors.black,
                fontWeight: FontWeight.w800,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(
              '$name',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Roboto',
                color: Colors.black,
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
