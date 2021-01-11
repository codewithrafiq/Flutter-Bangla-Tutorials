import 'package:flutter/material.dart';
import 'package:myapp/screens/home_screens.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green,
        accentColor: Colors.greenAccent,
        brightness: Brightness.light,
        textTheme: TextTheme(
          bodyText1: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).accentColor,
          ),
        ),
      ),
      home: HomeScreens(),
    );
  }
}
