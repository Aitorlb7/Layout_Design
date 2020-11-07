import 'package:flutter/material.dart';

import '../widgets/animal_info.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Expanded(flex: 2, child: _HalfUp()),
        ],
      ),
    );
  }
}

class _HalfUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Padding(
      //   padding: const EdgeInsets.fromLTRB(0, 200.0, 0, 0),
      home: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/Dog.png'),
          Text(
            'Hey, Thomas',
            style: TextStyle(
              fontFamily: 'Montserrat',
              color: Colors.black,
              fontSize: 30,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none,
            ),
          ),
          Text(
            'What kind of pet do you want to raise',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 12,
              decoration: TextDecoration.none,
            ),
          ),
          Text(
            'that you can share with others',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 12,
              decoration: TextDecoration.none,
            ),
          ),
        ],
        // ),
      ),
    );
  }
}
