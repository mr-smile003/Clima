import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(
      MaterialApp(home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: Text('Ask what you want'),
          backgroundColor: Colors.blue,
), 
          body: Ask(), 
      ),
      ),
    );

class Ask extends StatefulWidget {
  @override
  _AskState createState() => _AskState();
}

class _AskState extends State<Ask> {
  int n=2;
  void no(){
    n = Random().nextInt(5) + 1;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
      children: <Widget>[
        Expanded(
          child: FlatButton(onPressed: (){setState(() {
            no();
          });
          }, 
          child: Image.asset('images/ball$n.png'),
          ), 
          ),
      ],        
      ),
    );
  }
}


