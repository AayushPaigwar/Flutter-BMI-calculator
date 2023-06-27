// Learnt All about Custom Widgets

import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard(
      {super.key,
      required this.cardChild,
      required this.color,
      required this.onPress});
  final Widget cardChild;
  final Color color;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // ignore: unnecessary_null_comparison
      onTap: onPress != null ? () => onPress() : null,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
