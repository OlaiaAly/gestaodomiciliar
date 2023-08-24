import 'package:flutter/material.dart';
import 'package:gestaodomiciliar/widgets/appBar.dart';

import '../models/buildsmodels.dart';

class ApartmentsList extends StatelessWidget
{

  @override
  Widget build(BuildContext context)
  {
    final object_  = ModalRoute.of(context)!.settings.arguments as dynamic;
    // Building building = object_;
    print(object_);
    return Scaffold(
      appBar: AppBarCustom(title: "apartamentos",),
      // body: ,
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   // TODO: implement build
  //   throw UnimplementedError();
  // }
}