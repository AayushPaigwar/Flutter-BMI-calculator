import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const inactiveCardColor = Color(0xff1d1e33);
const activeCardColor = Color.fromARGB(255, 255, 170, 0);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  //String selectedGender = Gender as String;
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        //backgroundColor: Colors.grey,
      ),
      body: Column(
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
                      cardChild: IconContent(
                          icon: FontAwesomeIcons.mars, label: "MALE")),
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
                children: [],
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
