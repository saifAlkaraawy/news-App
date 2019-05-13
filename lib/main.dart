import 'package:flutter/material.dart';
import 'package:first_desgin001/screen/onBording.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:first_desgin001/screen/home_screen.dart';
import 'package:first_desgin001/utlites/theme_data.dart';

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
  final Widget screen;

  FirstApp(this.screen);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:AppTheme.appTheme,
      home: this.screen,
    );
  }
}
