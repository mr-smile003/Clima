import 'package:flutter/material.dart';
import './first_page.dart';
void main() => runApp(Practice());


class Practice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red,
        accentColor: Colors.black,
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          body1: TextStyle(
            color: Colors.yellow,
          ),
        )
      ),
      home: Firstpage(),
    );
      
    
  }
}