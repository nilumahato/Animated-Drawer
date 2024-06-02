import 'package:animated_drawer/Screens/homescreen.dart';
import 'package:animated_drawer/menu_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const ZoomDrawer(
        style: DrawerStyle.defaultStyle,
        menuBackgroundColor: Colors.white,
        menuScreen: MenuScreen(),
        mainScreen: HomeScreen());
  }
}
