import 'package:flutter/material.dart';
import 'package:gestaodomiciliar/config/constants.dart';
import 'package:gestaodomiciliar/config/router.dart';
import 'package:gestaodomiciliar/models/buildsmodels.dart';
import 'package:gestaodomiciliar/widgets/TextField.dart';
import 'package:gestaodomiciliar/widgets/Texts.dart';
import 'package:gestaodomiciliar/widgets/appBar.dart';
import 'package:gestaodomiciliar/widgets/drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:async/async.dart';

class ListBuilds extends StatefulWidget
{
  @override
  _ListBuilds createState() => _ListBuilds();
}
class _ListBuilds extends State<ListBuilds>
{

  Future <List<Building>> _getBuildings() async
  {
    final url = URL_API+"/get-buildings";
    // final Uri uri
    var dados = await http.get(url);

    var jsonData = jsonDecode(dados.body);
    List<Building> buildings = [];
    for(var data in jsonData['result'])
      {
        Building building = Building(
                                id: int.parse(data['id']),
                              number: int.parse(data['_number']),
                              apartments: int.parse(data['_apartments']),
                                name: data['_name'] as String,
          city: data['_city'],
          image: data['_image'], street: data['_street'], zone: data['_district']
        );

        buildings.add(building);
      }
    return buildings;
  }
  @override
  void initState()
  {
    super.initState();
  }
  @override
  Widget build(BuildContext context)
  {

    return Scaffold(
      appBar: AppBarCustom(title: "Edificios", color: gdBlack,),
      drawer: CustomDrawer(),
      body: Container(
        child: FutureBuilder(
          future: _getBuildings(),
          builder: (BuildContext context, AsyncSnapshot snap)
          {
            if(snap.hasData)
              {
                return new ListView.builder(
                    itemCount: snap.data.length,
                    itemBuilder: (BuildContext context, int index)
                  {
                    Building building = snap.data[index];
                    return ListTile(
                      leading: CircleAvatar(child: Icon(Icons.home_work),),
                      title: CustomText(text: building.name.toString(),color: gdBlack,fSize: 14.0,lSpacing: 1.0,),
                      subtitle: CustomText(text: building.city.toString(), color: gdRed, fSize: 12.0, lSpacing: 1.0,),
                      trailing: SizedBox(
                        child: IconButton(
                            icon: const Icon(Icons.description, color: gdRed_2,),
                            onPressed: () {
                              Navigator.pushNamed(context, Routers.BUILDING_DETAILS, arguments: building);
                            }),
                      ),
                      onTap: (){
                        Navigator.pushNamed(context, Routers.APARTMENT, arguments: building.id);
                      },
                      // onLongPress: ,
                    );
                  },
                );

              }else if(snap.hasError)
                {
                  return Text("error ${snap.error}");
                }else
                  {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
          },
        ),
        ),

      floatingActionButton: FloatingActionButton(
        tooltip: 'Adicionar edificio',
        onPressed: () {
          Navigator.pushNamed(context, Routers.BUILDING_ADD);
        },
        child: const Icon(Icons.add,color: gdRed, size: 25,),
        backgroundColor: gdBlack,
      ),
    );
  }

  static getListTile(BuildContext context)
  {
    return ListTile(
      leading: CircleAvatar(child: Icon(Icons.home_work),),
      title: CustomText(text: "Oasis Residencial",color: gdBlack,fSize: 16.0,lSpacing: 1.0,),
      subtitle: CustomText(text: "Francisco Mayanga", color: gdRed, fSize: 12.0, lSpacing: 1.0,),
      trailing: SizedBox(
        child: IconButton(
            icon: const Icon(Icons.description, color: gdRed_2,),
            onPressed: () {
            }),
      ),
    );
  }
}