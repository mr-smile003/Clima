import 'package:flutter/material.dart';
void main()
{
	runApp(
          MyApp()
		);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
		home: Scaffold(
	      backgroundColor: Colors.teal,
			  body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  
                CircleAvatar(
                radius: 100.0,
                backgroundImage:  AssetImage('images/smit.jpg' ),
                ),
              Text(
                'SMIT PATEL',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 40,
                color: Colors.white,
                
              ),
              ),
              Text(
                'SOFTWARE ENGINEER',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,  
                ),
              ),
              SizedBox(height: 20.0,width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ) ,
              
              ),
              Card(
              
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
               child: Padding(
                  padding: EdgeInsets.all(1.0),
                  child: ListTile(
                    title: Text('9574995778',
                    style: TextStyle(color: Colors.black,
                    fontSize: 20.0,
                    ),                 
                    ),
                  leading:  Icon(Icons.phone,
                      
                      ), 
                  ),
               ),
              ),
              Card(
                  margin: EdgeInsets.symmetric(vertical: 0, horizontal: 20.0),
                  color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(1.0),
                    child: ListTile(
                      leading:  Icon(Icons.email,
                    color: Colors.black,
                    ), 
                    title: Text('psmit95749@gmail.com',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    ),  
                    ),
                )
              ), 
                ],
     )
		),
    ),
   );
  }
}
