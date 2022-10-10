// import 'dart:html';
// import 'dart:js';

import 'package:fitness_app/screens/home_screen.dart';
import 'package:fitness_app/screens/workout_screen.dart';
import 'package:flutter/material.dart';

final List<Map<String, dynamic>> round1 = [
  {
    'leading': ['assets/images/Sa.gif', '10 x'],
    'title': 'High Stepping',
    'subtitle': '00:30',
    'trailing': Card(
      child: ListTile(
        onTap: () {
          Widget build(BuildContext context) {
            MaterialPageRoute route = MaterialPageRoute(
                builder: (BuildContext context) => HomeScreen());
            Navigator.push(context, route);
          }
        },
      ),
    )

    // 'trailing': Icon(Icons.chevron_right, size: 25),
  },
  {
    'leading': ['assets/images/JJ.gif', '15 x'],
    'title': 'Jumping Jacks',
    'subtitle': '00:45',
    'trailing': Icon(Icons.chevron_right, size: 25),
  },
  {
    'leading': ['assets/images/SBC.gif', '1 x'],
    'title': 'Standing Bicycle Crunches',
    'subtitle': '01:00',
    'trailing': Icon(Icons.chevron_right, size: 25),
  },
  {
    'leading': ['assets/images/MC.gif', '12 x'],
    'title': 'Mountain Climber',
    'subtitle': '00:50',
    'trailing': Icon(Icons.chevron_right, size: 25),
  },
  {
    'leading': ['assets/images/AC.gif', '1 x'],
    'title': 'ABdominal Crunches',
    'subtitle': '01:00',
    'trailing': Icon(Icons.chevron_right, size: 25),
  },
  {
    'leading': ['assets/images/HT.gif', '12 x'],
    'title': 'Heel Touch',
    'subtitle': '00:50',
    'trailing': Icon(Icons.chevron_right, size: 25),
  },
  {
    'leading': ['assets/images/P.gif', '10 x'],
    'title': 'Plank',
    'subtitle': '00:30',
    'trailing': Icon(Icons.chevron_right, size: 25),
  },
  {
    'leading': ['assets/images/ST.gif', '15 x'],
    'title': 'Stretch Twist',
    'subtitle': '00:45',
    'trailing': Icon(Icons.chevron_right, size: 25),
  },
  {
    'leading': ['assets/images/P.gif', '15 x'],
    'title': 'Plank',
    'subtitle': '00:45',
    'trailing': Icon(Icons.chevron_right, size: 25),
  },
  {
    'leading': ['assets/images/MC.gif', '15 x'],
    'title': 'Mountain Climber',
    'subtitle': '00:45',
    'trailing': Icon(Icons.chevron_right, size: 25),
  },
  {
    'leading': ['assets/images/AC.gif', '15 x'],
    'title': 'Abdominal Crunches',
    'subtitle': '00:45',
    'trailing': Icon(Icons.chevron_right, size: 25),
  },
  {
    'leading': ['assets/images/HT.gif', '15 x'],
    'title': 'Heel Touch',
    'subtitle': '00:45',
    'trailing': Icon(Icons.chevron_right, size: 25),
  },
];
