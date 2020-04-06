import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: 'contacts',
      home: Scaffold(
        backgroundColor: Colors.white,
          appBar: AppBar(
            title: Center(child: Text('CONTACTS')),
            backgroundColor: Colors.blue[200],
          ),
          body: Column(
            children: <Widget>[
          Row(children: <Widget>[
            
            Expanded(child:CircleAvatar(
      backgroundImage: AssetImage('images/im1.jfif'),
      
    )),
             Expanded(child: CircleAvatar(
      backgroundImage: AssetImage('images/im2.jfif'),
      
    )),
           
          ],),
          Row(children: <Widget>[
        Expanded(child: Text('smit')),
        Expanded(child: Text('abhi')),

          ],),
          Row(children: <Widget>[
             Expanded(child: CircleAvatar(
      backgroundImage: AssetImage('images/im3.jfif'),
      
    )),
              Expanded(child: CircleAvatar(
      backgroundImage: AssetImage('images/im4.jfif'),
      
    )),

          ],),
           Row(children: <Widget>[
        Expanded(child: Text('Shivani')),
        Expanded(child: Text('Janvi')),
          Row(children: <Widget>[
             Expanded(child: CircleAvatar(
      backgroundImage: AssetImage('images/im5.jfif'),
      
    )),
            Expanded(child:CircleAvatar(
      backgroundImage: AssetImage('images/im6.jfif'),
      
    ),),

          ],),
           Row(children: <Widget>[
        Expanded(child: Text('Tahir')),
        Expanded(child: Text('Jainsy')),
            ],
             )]
             ),
            ],
             
      ))));
}
