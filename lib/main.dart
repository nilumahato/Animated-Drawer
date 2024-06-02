import 'package:flutter/material.dart';
import 'package:animated_drawer/Screens/aboutscreen.dart';
import 'package:animated_drawer/Screens/notescreen.dart';
import 'package:animated_drawer/Screens/howdoesitworkscreen.dart';
import 'package:animated_drawer/Screens/notificationscreen.dart';
import 'package:animated_drawer/Screens/recordscreen.dart';
import 'package:animated_drawer/Screens/typescreen.dart';
import 'package:animated_drawer/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        '/about': (context) => const AboutScreen(),
        '/type': (context) => const TypeScreen(),
        '/record': (context) => const RecordScreen(),
        '/howDoesItWork': (context) => const HowDoesItWorkScreen(),
        '/notification': (context) => const NotificationScreen(),
        '/note': (context) => const NoteScreen(),
      },
    );
  }
}
