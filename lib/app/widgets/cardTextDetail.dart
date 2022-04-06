import 'package:flutter/material.dart';

class CardTextSlider extends StatelessWidget {
  const CardTextSlider({Key? key, required this.onTap, required this.text})
      : super(key: key);
  final String text;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.white)),
        child: Card(
          child: Text(
            text,
          ),
        ),
      ),
    );
  }
}
