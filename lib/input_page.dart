import 'dart:ffi';

import 'package:flutter/material.dart';

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
                  child: ReusableCard(),
                ),
                //TOP RIGHT
                Expanded(
                  child: ReusableCard(),
                )
              ],
            ),
          ),
          //CENTER
          Expanded(
            child: ReusableCard(),
          ),
          Expanded(
            child: Row(
              children: [
                //BOTTOM LEFT
                Expanded(
                  child: ReusableCard(),
                ),

                //BOTTOM RIGHT
                Expanded(
                  child: ReusableCard(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  const ReusableCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Color(0xff1d1e33), borderRadius: BorderRadius.circular(20)),
    );
  }
}
