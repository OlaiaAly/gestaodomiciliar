import 'package:flutter/material.dart';

class CustomElevatedButtom extends StatelessWidget
{
  final double comprim;
  final double altura;
  final Color primaryC;
  final double elevation;
  final Text text;
  void Function()? onPressed;
  final IconData? icon;
  CustomElevatedButtom({this.altura=40,this.comprim=100,this.primaryC=Colors.indigo,this.text= const Text("",),this.elevation=0, this.onPressed, this.icon});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        width: this.comprim,
        height: this.altura,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: this.elevation,
            backgroundColor: this.primaryC,
          ),
          onPressed: this.onPressed,
          child: this.text,
        ),
      ),
    );
  }
}

class CustomElevatedButtomIcon extends StatelessWidget
{
  final double comprim;
  final double altura;
  final Color primaryC;
  final double elevation;
  final Text text;
  void Function()? onPressed;
  // final

  CustomElevatedButtomIcon({this.altura=40, this.comprim=100, this.text=const Text("Botao"), this.elevation=0, this.primaryC=Colors.indigo, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        width: this.comprim,
        height: this.altura,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: this.elevation,
            primary: this.primaryC,
          ),
          onPressed: this.onPressed,
          child: Row(
            // Icon(),
          ),
        ),
      ),
    );
  }

}