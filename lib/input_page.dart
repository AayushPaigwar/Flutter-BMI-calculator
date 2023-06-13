import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.mars,
                          size: 80,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Male",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //TOP RIGHT
                Expanded(
                  child: ReusableCard(
                    cardChild: Column(),
                  ),
                )
              ],
            ),
          ),
          //CENTER
          Expanded(
            child: ReusableCard(
              cardChild: Column(),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                //BOTTOM LEFT
                Expanded(
                  child: ReusableCard(
                    cardChild: Column(),
                  ),
                ),

                //BOTTOM RIGHT
                Expanded(
                  child: ReusableCard(
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

class ReusableCard extends StatelessWidget {
  const ReusableCard({super.key, required this.cardChild});
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Color(0xff1d1e33), borderRadius: BorderRadius.circular(20)),
    );
  }
}
