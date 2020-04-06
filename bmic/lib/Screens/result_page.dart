import 'package:bmi_calculator/components/bottum_button.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';

class Resultspage extends StatelessWidget {

  Resultspage({this.bmi,this.interpretation,this.number});
  final String bmi;
  final String number;
  final String interpretation;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomCenter,
              child: Text(
                'YOUR RESULT',
                style: ktitletextstyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ResuableCard(
              colour: kactivecardcolor,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    number,
                    style: kresulttextstyle,
                  ),
                  Text(
                    bmi,
                    style: kbmitextstyle,
                  ),
                  Text(
                    interpretation,
                    style: kbodyts,
                    textAlign: TextAlign.center,
                  ),
                  Bottombutton(
                    bottumlable: 'RECLACULATE',
                    gotopage: (){
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
