// import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:gestaodomiciliar/config/router.dart';

class Login extends StatelessWidget{

  Login ({Key? key}): super(key:key);
  // DatabaseReference ref = FirebaseDatabase.instance.reference();



  @override
  Widget build(BuildContext context)
  {
    // final dailyRef = ref.child("users/");
    return Scaffold(
      body: Container(
        color: Color.fromARGB(250, 2, 112, 195),

        child: Center(//quando uma crianca esta dentro de outra crianca nao e children?
          child: Card(color: Colors.white,
          margin: EdgeInsets.only(left: 20.0, right: 20.0),
          child: Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 40,),
                FormInputWidget(obs: false,campo: "Email",icon: Icons.alternate_email),
                FormInputWidget(obs: true,campo: "Senha",icon: Icons.key_sharp),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment:MainAxisAlignment.end,
                  children: [
                    Text(
                      "Esqueceu a senha?",
                      style: TextStyle(
                        color: Color.fromARGB(250, 24, 124, 205),
                        fontSize: 16.0,
                        decoration: TextDecoration.underline
                      ),

                    ),
                  ],
                ),
                SizedBox(height: 30,),
                PrimaryButton(texto: "LOGIN",comprim: 200, altura: 45,),
                SizedBox(height: 30,)

              ],
            ),
          )
          ),
        ),
      ),
    );
  }


}

class FormInputWidget extends StatelessWidget
{
  final bool obs;
  final String campo;
  final IconData icon;

  FormInputWidget({this.obs=false,this.campo="Introduza algo aqui", this.icon=Icons.add});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(bottom: 10, top: 10),

        child: TextFormField(
        obscureText: obs,
      style: TextStyle(fontSize: 13.0),
          decoration: InputDecoration(
            prefixIcon: Icon(icon),
            hintText: campo,
            hintStyle: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w400,
              letterSpacing: 1.0,
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))
          ),

    ),
    );
  }
}
class PrimaryButton extends StatefulWidget
{
  final String texto;
  final double comprim, altura;
  PrimaryButton({this.texto="butao",this.altura=40,this.comprim=100});
  @override
  _PrimaryButton createState() => _PrimaryButton();
}
class _PrimaryButton extends State<PrimaryButton>{

  // final String texto;
  // final double comprim, altura;
// DatabaseReference ref = FirebaseDatabase.instance.reference()
  // PrimaryButton({this.texto="butao",this.altura=40,this.comprim=100});

  @override
  Widget build(BuildContext context)
  {
    // final users = ref.child('users/');
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        width: widget.comprim,
        height: widget.altura,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 3,
            primary: Color.fromARGB(250, 2, 112, 195),
          ),
          onPressed:(){

          },
          child: Text(widget.texto),
        ),
      ),
    );
  }
}