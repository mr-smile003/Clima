import 'package:flutter/material.dart';
const maincolor =Color(0xFF110C11);

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Homepage(),
    );
  }
}
class Homepage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      drawer: Drawer(
        child: Container(
          color: Colors.white
        ),
      ),
      backgroundColor: maincolor,
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 500,
            child: Image.asset('image/image.jpg', fit: BoxFit.fill,),
          ),
          Container(
           
          width: double.infinity,
          height: 100,
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: FlatButton(
                 onPressed: (){
                   _scaffoldkey.currentState.openDrawer();
                 },
                 child: Icon(Icons.library_books,color: Colors.black,size: 40,),
                 ),
             ),
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: Icon(Icons.mic,color: Colors.black,size: 40,),
             )
           ], 
          )
          ),
          Center(
            child: middlecontainer
          ),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(top: 550,left: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row1(),
                Row2(),
                Row3(),
              ],
            ),
          )
        ],
        
      ),
          
    );

  }
}
Widget get middlecontainer => Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30),bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
            color: maincolor,
            ),
            height: 60,
            width: 300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: CircleAvatar(
                   radius: 25,
                   backgroundColor: Colors.blue,
                 ),
               ),
               Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Text('This is time to travel',style: TextStyle(color: Colors.white),),
                   Text('Let`s Go',style: TextStyle(color: Colors.white)),
                 ],
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Cir(item: Icon(Icons.airplanemode_active))
               ),
             ], 
            ),
          );

class Row1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Cir(item: Icon(Icons.wb_cloudy),),
        Cir(item: Icon(Icons.calendar_today)),
        Cir(item: Icon(Icons.music_note)),
        Cir(item: Icon(Icons.speaker_notes)),
      ],
    );
  }
}
class Row2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text('Tuesday, jan 30',style: TextStyle(
             fontSize: 40,color: Colors.white
            ),),
            Text('hope you enjoy your world tour',style: TextStyle(color: Colors.white),),
          ],
        ),
      ],
    );
  }
}
class Row3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        LastButton(title: 'Chat',),
        LastButton(title: 'Text'),
        LastButton(title: 'Email')
      ],
    );
  }
}

class Cir extends StatelessWidget {
  Cir({this.item});
  final Icon item;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){
        },
          child: Container(
        decoration: BoxDecoration(
         boxShadow: [
           BoxShadow(
             color: Colors.white,
             offset: Offset(0.0,1),
             blurRadius: 30.0,
           )
         ] 
        ),
        child: CircleAvatar(
                       radius: 25,
                       backgroundColor: maincolor,
                       child: item,
                     ),
      ),
    );
  }
}

class LastButton extends StatelessWidget {
  LastButton({this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return FlatButton(onPressed: (){},
     child: Container(
       height: 50,
       width: 100,
       child: Center(
         child: Text(title,style: TextStyle(
          color: Colors.white 
         )),
       ),
        decoration: BoxDecoration(
          color: maincolor,
           borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30),bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
         boxShadow: [
           BoxShadow(
             color: Colors.white,
             offset: Offset(0.0,1),
             blurRadius: 10.0,
           )
         ] 
        ),
     ));
  }
}


Widget get drawer => Drawer(
child: Container(
  color: Colors.white
),


);