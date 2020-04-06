import 'package:flutter/material.dart';
import 'package:bmi_calculator/constant.dart';
class Bottombutton extends StatelessWidget {
Bottombutton({this.bottumlable,this.gotopage});
  final String bottumlable;
  final Function gotopage;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: gotopage,
      child: Container(
        margin: EdgeInsets.only(top:10),
        
        child: Center(
          child: Text(
            bottumlable,
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        color: kbottomcontainercolour,
        width: double.infinity,
        height: kbottomappbarheight,
      ),
    );
  }
}