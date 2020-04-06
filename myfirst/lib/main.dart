import 'package:flutter/material.dart';
void main(){

      runApp(MyApp(),);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
            home: Scaffold(
              body: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      color: Colors.limeAccent,
                      width: 100,
                      height: 100,
                      child: Text('container'),
                            ),
                            SizedBox(width: 100,height: 100,),
                    Container(
                      color: Colors.lime[300],
                      width: 100,
                      height: 100,
                      child: Text('container 2'),
 ),
 
                   ],  
               

               ),
              
              ),
            ),
    );
  }
}