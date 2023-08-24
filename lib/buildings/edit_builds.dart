import 'package:flutter/material.dart';
import 'package:gestaodomiciliar/widgets/appBar.dart';
import 'package:gestaodomiciliar/widgets/drawer.dart';

class EditBuild extends StatelessWidget
{
  EditBuild();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBarCustom(title: "Editar",),
      drawer: CustomDrawer(),
      body: Container(

      ),
    );
  }
}