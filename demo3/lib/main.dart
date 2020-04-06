import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Whatsapp(),
  ));
}

class Whatsapp extends StatefulWidget {
  @override
  _WhatsappState createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'WhatsApp',
              style: TextStyle(fontSize: 25),
            ),
            backgroundColor: Color(0xFF075E54),
            actions: <Widget>[
              Row(
                children: <Widget>[Icon(Icons.more_vert), SizedBox(width: 10)],
              ),
            ],
            bottom: TabBar(
              labelColor: Colors.white,
              labelPadding: EdgeInsets.all(8.0),
              indicatorColor: Colors.white,
              tabs: [
                Container(
                  height: 25.0,
                  width: 50.0,
                  child: Tab(
                    icon: Icon(Icons.camera_alt),
                  ),
                ),
                Container(child: Text('CHATS'), height: 25.0, width: 50.0),
                Container(child: Text('STATUS'), height: 25.0, width: 60.0),
                Container(child: Text('CALLS'), height: 25.0, width: 50.0),
              ],
            ),
          ),
          body: Stack(
            children: <Widget>[
              TabBarView(
                children: [
                  Container(
                    color: Colors.black,
                  ),
                  Container(color: Colors.white,child: Lis(),),
                  Container(color: Colors.green,child: Lis(),),
                  Container(color: Colors.yellow),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class Lis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return    ListView(
               children: <Widget>[
                 ListTile(
                   leading: Cir(),
                   title: Text('SMIT PATEL'),
                   onTap: (){},
                 ),
                 ListTile(
                   leading:  Cir(),
                   title: Text('SMIT PATEL'),
                 ),
                 ListTile(
                   leading:  Cir(),
                   title: Text('SMIT PATEL'),
                 ),
                 ListTile(
                   leading:  Cir(),
                   title: Text('SMIT PATEL'),
                 ),
                 ListTile(
                   leading:  Cir(),
                   title: Text('SMIT PATEL'),
                   onTap: (){},
                 ),
                 ListTile(
                   leading:  Cir(),
                   title: Text('SMIT PATEL'),
                 ),
                 ListTile(
                   leading:  Cir(),
                   title: Text('SMIT PATEL'),
                 ),
                 ListTile(
                   leading:  Cir(),
                   title: Text('SMIT PATEL'),
                 ),
                 ListTile(
                   leading:  Cir(),
                   title: Text('SMIT PATEL'),
                 ),
                 ListTile(
                   leading:  Cir(),
                   title: Text('SMIT PATEL'),
                 ),
                 ListTile(
                   leading: Cir(),
                   title: Text('SMIT PATEL'),
                 ),
                 ListTile(
                   leading:  Cir(),
                   title: Text('SMIT PATEL'),
                 ),
                 ListTile(
                   leading:  Cir(),
                   title: Text('SMIT PATEL'),
                 ),
                 ListTile(
                   leading: Cir(),
                   title: Text('SMIT PATEL'),
                 ),
                 ListTile(
                   leading:  Cir(),
                   title: Text('SMIT PATEL'),
                 ),
                 ListTile(
                   leading:  Cir(),
                   title: Text('SMIT PATEL'),
                 ),
                 ListTile(
                   leading:  Cir(),
                   title: Text('SMIT PATEL'),
                 ),
                 ListTile(
                   leading:  Cir(),
                   title: Text('SMIT PATEL'),
                 ),
                 ListTile(
                   leading:  Cir(),
                   title: Text('SMIT PATEL'),
                 ),
               ], 
              );
  }
}
class Cir extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.black,
      radius: 20.0,
    );
  }
}