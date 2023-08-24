import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gestaodomiciliar/config/constants.dart';
import 'package:gestaodomiciliar/config/router.dart';
import 'package:gestaodomiciliar/widgets/appBar.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:async/async.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:meuapp/app/models/building_model.dart';
// import 'package:meuapp/provider/building_provider.dart';
// import 'package:provider/provider.dart';

class BuildingForm extends StatefulWidget {
  @override
  State<BuildingForm> createState() => _BuildingFormState();
}

class _BuildingFormState extends State<BuildingForm> {
  // XFile? image;

  final _form = GlobalKey<FormState>();

  final Map<String, Object> _formData = {};

  @override
  Widget build(BuildContext context) {
    // Buildings buildings = Provider.of<Buildings>(context);
    return Scaffold(
      appBar: AppBarCustom(
        title: "Cadastrar predio",
        color: gdBlack,
        icon: Icons.save,
        iconFunction: onSave,
      ),
      // appBar: AppBar(
      //   title: Text("Formulario do Predio"),
      //   actions: [
      //     IconButton(
      //       icon: Icon(Icons.save),
      //       onPressed: () {
      //         _form.currentState!.save();
      //         var building = Building(
      //           name: _formData['name'] as String,
      //           buildingNumber: _formData['buildingNumber'] as int,
      //           apartamentNumbers: _formData['apartamentNumbers'] as int,
      //           neighborhood: _formData['neighborhood'] as String,
      //           street: _formData['street'] as String,
      //           city: _formData['city'] as String,
      //           country: _formData['country'] as String,
      //           avatarUrl: _formData['avatarUrl'] as String,
      //         );
      //         buildings.put(building);
      //         Navigator.of(context).pop();
      //       },
      //     )
      //   ],
      // ),
      body: SizedBox(
        child: ListView(
          padding: EdgeInsets.all(15.0),
          children: <Widget>[
            Form(
              key: _form,
              child: Column(
                children: <Widget>[

                  TextFormField(
                    readOnly: false,
                    decoration: InputDecoration(
                      labelText: 'Nome',
                      prefixIcon: Icon(Icons.home),
                    ),
                    onSaved: (value) => _formData['name'] = value!,
                    validator: (value){
                      return value;
                      // if(value==null)
                      //   {
                      //     return "preecha o campo";
                      //   }
                    },
                  ),
                  TextFormField(
                    readOnly: false,
                    decoration: InputDecoration(
                      labelText: 'Numero de Edificio',
                      prefixIcon: Icon(Icons.numbers),
                    ),
                    onSaved: (value) =>
                    _formData['buildingNumber'] = int.parse(value!),
                    keyboardType: TextInputType.number,
                  ),
                  TextFormField(
                    readOnly: false,
                    decoration: InputDecoration(
                      labelText: 'Numero Total de Apartamentos',
                      prefixIcon: Icon(Icons.numbers),
                    ),
                    onSaved: (value) =>
                    _formData['apartamentNumbers'] = int.parse(value!),
                    keyboardType: TextInputType.number,
                  ),

                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        children: <Widget>[
                          const Text(
                            'Endereco',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextFormField(
                            readOnly: false,
                            decoration: InputDecoration(
                              labelText: 'Bairro',
                              prefixIcon: Icon(Icons.area_chart),
                            ),
                            onSaved: (value) =>
                            _formData['neighborhood'] = value as String,
                          ),
                          TextFormField(
                            readOnly: false,
                            decoration: InputDecoration(
                              labelText: 'Rua',
                              prefixIcon: Icon(Icons.streetview),
                            ),
                            onSaved: (value) =>
                            _formData['street'] = value as String,
                          ),
                          TextFormField(
                            readOnly: false,
                            decoration: InputDecoration(
                              labelText: 'Cidade',
                              prefixIcon: Icon(Icons.location_city),
                            ),
                            onSaved: (value) =>
                            _formData['city'] = value as String,
                          ),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  onSave()
  {
    _form.currentState!.save();
    // print(_formData);
    postData();
    Navigator.pushNamed(context, Routers.BUILDING);

  }
  postData() async
  {
    final url = URL_API+"/store-building";
    var response = await http.post(
      Uri.parse(url),
      body: {
        "name": _formData['name'].toString(),
        "number": _formData['buildingNumber'].toString(),
        "apartments": _formData['apartamentNumbers'].toString(),
        "city": _formData['city'].toString(),
        "street": _formData['street'].toString(),
        "zone": _formData['neighborhood'].toString()
      }
    );
  }
}
