import 'package:flutter/material.dart';
import 'package:first_desgin001/screen/onBording.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:first_desgin001/screen/home_screen.dart';

void main() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  Widget screen;
  bool seen = sharedPreferences.getBool("seen");
  if (seen == null || seen == false) {
    screen = OnBoarding();
  } else {
    screen = HomeScreen();
  }

  runApp(FirstApp(screen));
}

class FirstApp extends StatelessWidget {
  final Widget Screen;

  FirstApp(this.Screen);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: this.Screen,
    );
  }
}
