import 'dart:ui';

import 'package:flutter/material.dart';
import '../widgets/icon.dart';
import '../widgets/animal_info.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(flex: 1, child: _HalfUp()),
                Expanded(flex: 1, child: _HalfDown()),
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 150, 80),
                child: IconInfo(
                  box_color: Colors.grey[200],
                  image: 'assets/icons/person_icon.png',
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.fromLTRB(150, 0, 0, 80),
                child: IconInfo(
                  box_color: Colors.orange[400],
                  image: 'assets/icons/selected_home_icon.png',
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.fromLTRB(198, 0, 0, 125),
                child: IconInfo(
                  box_color: Colors.grey[200],
                  image: 'assets/icons/internet_icon.png',
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 198, 125),
                child: IconInfo(
                  box_color: Colors.grey[200],
                  image: 'assets/icons/chat_icon.png',
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 35),
                child: Icon(
                  Icons.add_circle_rounded,
                  size: 80,
                  color: Colors.deepOrange[600],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _HalfUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Image.asset(
              'assets/portrait_image.png',
              scale: 1.1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              'Hey, Thomas',
              style: TextStyle(
                fontFamily: 'Roboto',
                color: Colors.black,
                fontSize: 27,
                letterSpacing: -0.5,
                wordSpacing: -2,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              'What kind of pet do you want to raise',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Roboto',
                fontSize: 14,
                wordSpacing: 1,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
            child: Text(
              'that you can share with others',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Roboto',
                fontSize: 14,
                wordSpacing: 1,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            width: 430,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey[100],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.search_sharp,
                  color: Colors.grey[400],
                ),
                Padding(padding: EdgeInsets.only(left: 5)),
                Text(
                  'Search',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 15,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 5),
            child: Row(
              children: [
                Icon(
                  Icons.location_on,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 9),
                  child: Text(
                    'New York',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _HalfDown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15, 5, 15, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AnimalInfo(image: 'assets/dog_image.png', value: 53, name: 'Dog'),
          AnimalInfo(image: 'assets/cat_image.png', value: 67, name: 'Cat'),
          AnimalInfo(
              image: 'assets/rabbit_image.png', value: 29, name: 'Rabbit'),
        ],
      ),
    );
  }
}
