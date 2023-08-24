import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gestaodomiciliar/widgets/Texts.dart';
import 'package:gestaodomiciliar/widgets/appBar.dart';
import 'package:gestaodomiciliar/config/constants.dart';
import 'package:gestaodomiciliar/widgets/box.dart';
import 'package:gestaodomiciliar/widgets/drawer.dart';
import 'package:http/http.dart' as http;

class Home extends StatelessWidget {
  Home();
  _listar() async
  {
    final url = URL_API+"/get-clients";
    final response = await http.get(url);
    final map = jsonDecode(response.body);
    print(map.toString());
  }

  @override
  Widget build(BuildContext context) {
    // _listar();
    return Scaffold(
      appBar: AppBarCustom(
        color: gdBlack,
        title: "Pagina inicial",
      ),
      drawer: CustomDrawer(),
      body: Container(
        color: Color.fromARGB(250, 236, 236, 240),
        child: Column(
          children: [
            Card(
              margin: EdgeInsets.all(5),
              color: Color.fromARGB(255, 255, 255, 255),
              child: Image(
                image: AssetImage('assets/house.jpg'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Center(
                child: Text(
                  "Itens do App",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.0,
                      fontSize: 14.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Box(
                        icon: Icons.home_work,
                        text: "Predios",
                        iconBgColor: gdRed,
                      ),
                      Box(
                        icon: Icons.home,
                        text: "Apartamentos",
                        iconBgColor: gdRed,
                      ),
                      Box(
                        icon: Icons.people,
                        text: "Inquilinos",
                        iconBgColor: gdRed,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Box(
                        icon: Icons.monetization_on_outlined,
                        text: "Receitas",
                        iconBgColor: gdRed,
                      ),
                      Box(
                        icon: Icons.event_busy,
                        text: "Ocupados",
                        iconBgColor: gdRed,
                      ),
                      Box(
                        icon: Icons.event_available,
                        text: "Desocupados",
                        iconBgColor: gdRed,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(250, 2, 112, 195),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Color.fromARGB(250, 236, 236, 240),
            ),
            label: 'Perfil',
            // activeIcon: ,
            // backgroundColor: Color.fromARGB(250, 201, 224, 240),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color.fromARGB(250, 236, 236, 240),
            ),
            label: 'Home',
            backgroundColor: Color.fromARGB(250, 236, 236, 240),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Color.fromARGB(250, 236, 236, 240),
            ),
            label: 'Settings',
            // backgroundColor: Color.fromARGB(250, 236, 236, 240),
          )
        ],
      ),
    );
  }
}
