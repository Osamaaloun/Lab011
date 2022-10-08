import 'package:flutter/material.dart';
import 'package:lab011/Screens/loginpage.dart';
import 'package:lab011/screens/Chat/messenger.dart';

import 'Lessons.dart';
import 'Screens/Grammer/Lesson1.dart';
import 'Screens/Grammer/Lesson2.dart';
import 'Screens/Grammer/Lesson3.dart';

import 'Screens/Level Test/level_test.dart';
import 'Screens/Level Test/test_result.dart';
import 'Screens/Tobics.dart';
import 'Screens/levels.dart';
import 'Screens/study.dart';
import 'homepage.dart';

void main() {
  runApp(MaterialApp(routes: {
    "Level": (context) => const Level(),
    "Home": (context) => HomePage(),
    "Tobics": (context) => Tobics(),
    "TestResult": (context) => TestResult(),
    "Lesson_1": (context) => Lesson1(),
    "Lesson_2": (context) => Lesson2(),
    "Lesson_3": (context) => Lesson3(),
    "Lessons": (context) => Lessons(),
    "loginpage": (context) => LoginPage(),
    "q1": (context) => LevelTest(),
    "study": (context) => Study(),
    "next q": (context) => TestResult(
          testResult: userScore,
        ),
    "massenger":(context) => MessengerScreen()
  }, home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LoginPage();
  }
}
