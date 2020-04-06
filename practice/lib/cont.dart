import 'package:flutter/material.dart';
import 'package:practice/cardis.dart';

class Cont extends StatelessWidget {
  Cont({this.cha});
  final Widget cha;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 80,right: 80.0,top: 40,bottom: 20),
      decoration: BoxDecoration(
        color: Color(0xFFEEABC2),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
           BoxShadow(
            color: Colors.black,
            blurRadius: 20.0,
          ),
        ],
      ),
      child: Cardis(),
    );
  }
}
