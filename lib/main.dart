import 'package:febrafarapp/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        accentColor: Colors.redAccent,
        buttonTheme: ButtonThemeData(
           buttonColor: Colors.redAccent,
           shape: RoundedRectangleBorder(),
           textTheme: ButtonTextTheme.accent,
        )
      ),
    );
  }
}    
