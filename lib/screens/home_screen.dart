import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fitness_app/widgets/round_info_container.dart';
import 'package:fitness_app/screens/workout_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/hr.jpg'),
                  fit: BoxFit.cover,
                  alignment: Alignment.centerLeft),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
              child: Container(
                color: Color.fromARGB(255, 106, 0, 0).withOpacity(.123),
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 10,
            right: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.menu),
                  iconSize: 30,
                  color: Colors.white,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.favorite),
                  iconSize: 30,
                  color: Colors.white,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 22.0),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.6),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    'FITNESS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 30.0),
                  child: Text(
                    'FULL - BODY KILLER\nWORKOUT',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RoundInfoContainer(
                      title: 'Normal',
                      subtitle: 'Workout',
                    ),
                    _divider(),
                    RoundInfoContainer(
                      title: 'Intermediate',
                      subtitle: 'Workout',
                    ),
                    _divider(),
                    RoundInfoContainer(
                      title: 'Extreme',
                      subtitle: 'Workout',
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => WorkoutScreen(),
              )),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255).withOpacity(.7),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'START WORKOUT',
                      style: TextStyle(
                          fontSize: 18.0, color: Color.fromARGB(115, 0, 0, 0)),
                      textAlign: TextAlign.start,
                    ),
                    Icon(
                      Icons.chevron_right,
                      size: 20.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _divider() {
    return Container(
      width: 2.9,
      height: 35,
      color: Colors.white.withOpacity(.6),
    );
  }
}
