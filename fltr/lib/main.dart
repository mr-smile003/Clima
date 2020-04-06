import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "this is my application",
    home: Scaffold(
      appBar: AppBar(title: Text('appbar'),
      backgroundColor: Colors.blueGrey,),
      body: getlistv() 
  ),
  )
  );

}
Widget getlistv(){
  var listve = ListView(
    children: <Widget>[
      ListTile(leading: Icon(Icons.landscape),
              title: Text('landscap'),
              onTap: null
              ),
    ],
  );
  return listve;

}


