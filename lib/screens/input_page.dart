import 'package:flutter/material.dart';
import 'package:flutter_bmi_app/screens/result_page.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/bottom_button.dart';
import '../components/icon_content.dart';
import '../components/reusable_card.dart';
import '../components/round_icon_button.dart';

import '../constants.dart';
import 'result_page.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  //String selectedGender = Gender as String;
  Gender? selectedGender;
  int height = 200;
  int weight = 150;
  int age = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        //backgroundColor: Colors.grey,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //TOP
          Expanded(
            child: Row(
              children: [
                //TOP LEFT
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    color: selectedGender == Gender.male
                        ? kactiveCardColor
                        : kinactiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: "MALE",
                      color: Colors.blue,
                    ),
                  ),
                ),
                //TOP RIGHT
                Expanded(
                  child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      color: selectedGender == Gender.female
                          ? kactiveCardColor
                          : kinactiveCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: "FEMALE",
                        color: Colors.pink,
                      )),
                )
              ],
            ),
          ),
          //CENTER
          Expanded(
            child: ReusableCard(
              onPress: () {},
              color: kactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: klabelTextStyle,
                  ),
                  Row(
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumbertextStyle,
                      ),
                      Text(
                        "cms",
                        style: klabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30),
                        thumbColor: Color(0xFFFF0067),
                        activeTrackColor: Color(0xFFFF0067),
                        inactiveTrackColor: Colors.white,
                        overlayColor: Color(0x29FF0067)),
                    child: Slider(
                      //activeColor: Colors.white,
                      //inactiveColor: Color(0xff8d8e98),
                      value: height.toDouble(),
                      min: 120,
                      max: 220,
                      onChanged: (double value) {
                        //print(value);
                        setState(() {
                          height = value.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                //BOTTOM LEFT
                Expanded(
                  child: ReusableCard(
                    onPress: () {},
                    color: kactiveCardColor,
                    cardChild: Column(
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Center(
                          child: Text(
                            "WEIGHT",
                            style: klabelTextStyle,
                          ),
                        ),
                        Center(
                          child: Text(
                            weight.toString(),
                            style: kNumbertextStyle,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              onPressed: () {
                                setState(
                                  () {
                                    weight--;
                                  },
                                );
                              },
                              icon: FontAwesomeIcons.minus,
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(
                                  () {
                                    weight++;
                                  },
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                //BOTTOM RIGHT
                Expanded(
                  child: ReusableCard(
                    onPress: () {},
                    color: kactiveCardColor,
                    cardChild: Column(
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Center(
                          child: Text(
                            "AGE",
                            style: klabelTextStyle,
                          ),
                        ),
                        Center(
                          child: Text(
                            age.toString(),
                            style: kNumbertextStyle,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              onPressed: () {
                                setState(
                                  () {
                                    age--;
                                  },
                                );
                              },
                              icon: FontAwesomeIcons.minus,
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            RoundIconButton(
                              onPressed: () {
                                setState(
                                  () {
                                    age++;
                                  },
                                );
                              },
                              icon: FontAwesomeIcons.plus,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResultPage()));
            },
            buttonTitle: 'CALCULATE YOUR BMI',
          )
        ],
      ),
    );
  }
}
