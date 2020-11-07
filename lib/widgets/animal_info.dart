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
      width: 40,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      ),
      padding: EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('$image'),
          Text(
            '$value',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '$name',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
