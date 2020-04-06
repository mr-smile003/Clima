import 'package:flutter/material.dart';

class Cardis extends StatelessWidget {
  Cardis({this.gen,this.pic});
  final String gen;
  final String pic;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
     Expanded(child: Image.asset('images/m1.png')),
        SizedBox(height: 10),
        Text(gen),
      ],
    );
  }
}