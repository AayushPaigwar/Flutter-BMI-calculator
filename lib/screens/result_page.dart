import 'package:flutter/material.dart';
import 'package:flutter_bmi_app/constants.dart';
import '../components/bottom_button.dart';
import '../components/reusable_card.dart';
import 'input_page.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 50),
              child: Text(
                "Your Results",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
                cardChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(
                      child: Text(
                        "NORMAL",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Center(
                      child: Text(
                        "30.2",
                        style: TextStyle(
                            fontSize: 100, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Your BMI is Low",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    )
                  ],
                ),
                color: kactiveCardColor,
                onPress: () {}),
            flex: 5,
          ),
          Expanded(
              child: Container(
            child: BottomButton(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => InputPage()));
                },
                buttonTitle: "RE-CALULATE BMI"),
          ))
        ],
      ),
    );
  }
}
