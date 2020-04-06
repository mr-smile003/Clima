import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        color: Colors.purple,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      'SMIT',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 35.0,
                        fontFamily: 'Pacifico',
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      ' IS THE BEST',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20.0,
                        fontFamily: 'Pacifico',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      'PATEL',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 35.0,
                        fontFamily: 'Pacifico',
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'IS ALSO BEST',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20.0,
                        fontFamily: 'Pacifico',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Img(),
              Botn(),
            ],
          ),
        ),
      ),
    );
  }
}

class Img extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: Image(image: AssetImage('images/bln.png')));
  }
}

class Botn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.0,
      height: 50.0,
      child: RaisedButton(
          color: Colors.deepOrangeAccent,
          child: Text('button'),
          elevation: 10.0,
          onPressed: () {
            youaredone(context);
          }),
    );
  }

  void youaredone(BuildContext context) {
    var alertdig = AlertDialog(
      title: Text('you are done'),
      content: Text('you can move further'),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertdig;
        });
  }
}
