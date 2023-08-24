import 'package:flutter/material.dart';

class CustomText extends StatelessWidget
{
  final String text;
  final Color color;
  final double fSize;
  final double lSpacing;
  final FontWeight fontWeight;
  // final F
  CustomText({this.text="something",this.color=Colors.black26,this.fSize=12.0, this.lSpacing=0, this.fontWeight=FontWeight.w400});
  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      style: TextStyle(
        fontSize: this.fSize,
        letterSpacing: this.lSpacing,
        color: this.color,
        fontWeight: this.fontWeight,
      ),
    );
  }
}