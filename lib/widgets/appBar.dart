import 'package:flutter/material.dart';
import 'package:gestaodomiciliar/config/constants.dart';
import 'package:gestaodomiciliar/widgets/Texts.dart';
class AppBarCustom extends StatelessWidget implements PreferredSize
{
  final Color color;
  final String title;
  final IconData ? icon;
  VoidCallback ? iconFunction;

  AppBarCustom({
    this.color=Colors.blue,
    this.title="title",
    this.icon,
     this.iconFunction,
  });
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: CustomText(text: this.title,lSpacing: 1, color: gdBGColor,fSize: 14,),
      backgroundColor: this.color,
      actions: [
        IconButton(
            icon: Icon(icon, color: gdHover , size: 25,),
          onPressed: iconFunction,
        )
      ],
    );
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60.0);

}