import 'package:flutter/material.dart';
import 'screen/main_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: MainScreen(),
    );
  }
}
