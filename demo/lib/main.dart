import 'package:flutter/material.dart';
void main()
{
	runApp(
		MaterialApp(
		home: Scaffold(
			
			appBar: AppBar(
					title: Text('this is my application'),
					backgroundColor: Colors.grey[900],
					),
			backgroundColor: Colors.blueGrey,
			body: Center(
					child: Text(
            'Smit Patel',
            style: TextStyle(
              fontFamily: 'Loster',
              fontSize: 40.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,

            ),
          ),

				   ),
				),
			),
  );
		
}