import 'package:flutter/material.dart';
class Roundicon extends StatelessWidget {
  Roundicon({this.icon, this.ontou});

  final IconData icon;
  final Function ontou;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: ontou,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      elevation: 6.0,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
