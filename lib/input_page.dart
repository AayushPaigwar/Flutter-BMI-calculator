import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'constants.dart';

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
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild:
                        IconContent(icon: FontAwesomeIcons.mars, label: "MALE"),
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
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChild: IconContent(
                          icon: FontAwesomeIcons.venus, label: "FEMALE")),
                )
              ],
            ),
          ),
          //CENTER
          Expanded(
            child: ReusableCard(
              onPress: () {},
              color: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: labelTextStyle,
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
                        style: labelTextStyle,
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
                  child: TextButton(
                    onPressed: () {},
                    child: ReusableCard(
                      onPress: () {},
                      color: activeCardColor,
                      cardChild: Column(),
                    ),
                  ),
                ),

                //BOTTOM RIGHT
                Expanded(
                  child: ReusableCard(
                    onPress: () {},
                    color: activeCardColor,
                    cardChild: Column(),
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Color(0xFFFF0067),
            margin: EdgeInsets.only(top: 8),
            width: double.infinity,
            height: 80,
          )
        ],
      ),
    );
  }
}
