import 'dart:ui';

import 'package:flutter/material.dart';
void main()
{
    return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('dice app'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),


      ),

    ),
    );
}
class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child:Image(
         image: AssetImage('images/demo')) ,
          )





      ]
    );
  }
}