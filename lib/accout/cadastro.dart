import 'package:flutter/material.dart';
import 'package:gestaodomiciliar/accout/login.dart';
class Cadastro extends StatelessWidget {
  Cadastro({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(250, 2, 112, 195),
        child: Center(
          child: Card(
            color: Colors.white,
            margin: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Cadastro",
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 3.0
                    ),
                  ),
                  SizedBox(height: 40,),

                  // SizedBox(height: 5,),
                  FormInputWidget(obs: false,campo: "Nome Completo",icon: Icons.person),
                  FormInputWidget(obs: false,campo: "Email",icon: Icons.alternate_email),
                  // SizedBox(height: 5,),
                  FormInputWidget(obs: true,campo: "Celular",icon: Icons.phone_android),
                  FormInputWidget(obs: true,campo: "Senha",icon: Icons.key_sharp),

                  // FormInputWidget(obs: true,campo: "Nuit",icon: Icons.key_sharp),
                  SizedBox(height: 10,),
                  PrimaryButton(texto: "cadastrar",altura: 48,comprim: 150,),
                  SizedBox(height: 10,),
                  Text(
                    "Politica e privacidade",
                    style: TextStyle(
                        color: Color.fromARGB(250, 24, 124, 205),
                        fontSize: 16.0,
                        decoration: TextDecoration.underline
                    ),
                  ),
                  SizedBox(height: 10,)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
