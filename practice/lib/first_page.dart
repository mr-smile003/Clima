import 'package:flutter/material.dart';
import 'package:practice/cardis.dart';
import 'package:practice/cont.dart';
import './constats.dart';

class Firstpage extends StatefulWidget {
  @override
  _FirstpageState createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 50.0,
        title: Text(
          'this is only practice app',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: backgroundcolor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Cont(
              cha: Cardis(),
            ),
          ),
          SizedBox(height: 20.0),
          Expanded(
            child: Cont(),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            color: Colors.red,
            height: 20.0,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}
