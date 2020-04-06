import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void sound(int soundno){
     final player = AudioCache();
                  player.play('note$soundno.wav');
  }
  Expanded buildm({Color color,int soundno}){
    return Expanded(
             
               child: Text(''),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: 
            Column( 
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildm(color: Colors.red,soundno: 1),
                buildm(color: Colors.orange,soundno: 2),
                buildm(color: Colors.yellow,soundno: 3),
                buildm(color: Colors.green,soundno: 4),
                buildm(color: Colors.teal,soundno: 5),
                buildm(color: Colors.blue,soundno: 6),
                buildm(color: Colors.purple,soundno: 7),
           
         ], ),
        ),
      ),
    );
    
  }
}
