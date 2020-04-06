import 'package:bmi_calculator/components/bottum_button.dart';
import './result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/components/Icon_content.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/components/round_icon_button.dart';
import 'package:bmi_calculator/bmi_brain.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  int wieght = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: ResuableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  colour: selectedGender == Gender.male
                      ? kactivecardcolor
                      : kinactivecardcolor,
                  cardchild: IconContent(
                    icon: FontAwesomeIcons.mars,
                    label: "MALE",
                  ),
                ),
              ),
              Expanded(
                child: ResuableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  colour: selectedGender == Gender.female
                      ? kactivecardcolor
                      : kinactivecardcolor,
                  cardchild: IconContent(
                    icon: FontAwesomeIcons.venus,
                    label: "FEMALE",
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: ResuableCard(
                    colour: kactivecardcolor,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'HEIGHT',
                          style: klabletextstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(
                              height.toString(),
                              style: kwfont,
                            ),
                            Text(
                              'cm',
                              style: klabletextstyle,
                            ),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 15.0),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 30.0),
                            thumbColor: Color(0xFFEB1555),
                            activeTrackColor: Color(0xFFEB1555),
                            inactiveTrackColor: Color(0xFF8D8E98),
                          ),
                          child: Slider(
                            value: height.toDouble(),
                            min: 120,
                            max: 220,
                            onChanged: (double newval) {
                              setState(() {
                                height = newval.round();
                              });
                            },
                          ),
                        )
                      ],
                    )),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: ResuableCard(
                  colour: kactivecardcolor,
                  cardchild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'WEIGHT',
                        style: klabletextstyle,
                      ),
                      Text(
                        wieght.toString(),
                        style: kwfont,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Roundicon(
                            icon: FontAwesomeIcons.plus,
                            ontou: () {
                              setState(() {
                                wieght++;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          SizedBox(width: 10.0),
                          Roundicon(
                            icon: FontAwesomeIcons.minus,
                            ontou: () {
                              setState(() {
                                wieght--;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ResuableCard(
                  colour: kactivecardcolor,
                  cardchild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'AGE',
                        style: klabletextstyle,
                      ),
                      Text(
                        age.toString(),
                        style: kwfont,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Roundicon(
                            icon: FontAwesomeIcons.plus,
                            ontou: () {
                              setState(() {
                                age++;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          SizedBox(width: 10.0),
                          Roundicon(
                            icon: FontAwesomeIcons.minus,
                            ontou: () {
                              setState(() {
                                age--;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Bottombutton(
            bottumlable: 'CALCULATE',
            gotopage: () {
              Brain cal = new Brain(height: height, weight: wieght);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Resultspage(
                      bmi: cal.calculateBMI(),
                      number: cal.getResult(),
                      interpretation: cal.getInterpretation(),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
