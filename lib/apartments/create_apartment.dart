import 'package:flutter/material.dart';
import 'package:gestaodomiciliar/config/constants.dart';
import 'package:gestaodomiciliar/widgets/appBar.dart';

class CreateApart extends StatelessWidget
{
  CreateApart();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
            appBar: AppBarCustom(color: gdBGColor, title: "Adicionar apartamento",),

    );
  }
}