import 'package:flutter/material.dart';
import 'package:gestaodomiciliar/config/constants.dart';
import 'package:gestaodomiciliar/widgets/Texts.dart';

class Box extends StatelessWidget {
  final double wd;
  final double ht;
  final IconData icon;
  final Color bgColor;
  final Color iconBgColor;
  final Color iconColor;
  final double radius;
  final String text;

  Box(
      {this.wd = 110,
      this.ht = 120,
        this.icon=Icons.add,
      this.bgColor = Colors.white,
        this.iconBgColor=Colors.blue,
      this.iconColor = Colors.white,
      this.radius = 30,this.text=""});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: this.wd,
        height: this.ht,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          CircleAvatar(
            backgroundColor: this.iconBgColor,
            child: Icon(
              this.icon,
              color: this.iconColor,
            ),
            radius: this.radius,
          ),
          SizedBox(
            height: 10,
          ),
          CustomText(text: this.text,color: gdBlack,lSpacing: 1.0,)
        ],
        ),
      color: this.bgColor,
    );
  }
}
