// import 'dart:ffi';

import 'package:flutter/material.dart';

class TextFormFieldCustomState extends State<TextFormFieldCustom>
{
  // final String text;
  // final IconData icon;
  // final TextInputType textInputType;
  // final Function(bool) ? onSaveFunction;
  // VoidCallback ? onTapeFunction;
  // final Function(bool)? onChangeFunction;
  // VoidCallback ? onEditingCompleteFunction;
  // TextFormFieldCustomState({this.text = "Preencha o campo", this.icon = Icons.collections_bookmark_sharp, this.onSaveFunction, this.onTapeFunction, this.onChangeFunction, this.onEditingCompleteFunction, this.textInputType = TextInputType.text});

  @override
  Widget build(BuildContext context)
  {

    return TextFormField(
      readOnly: false,
      decoration: InputDecoration(
        labelText: widget.text,
        prefixIcon: Icon(widget.icon),
      ),
      onSaved: (value)=>widget.onSaveFunction,
      onChanged: (value)=>widget.onChangeFunction,
      onTap: ()=>widget.onTapeFunction,
      onEditingComplete: ()=>widget.onEditingCompleteFunction,
      keyboardType: widget.textInputType,
    );
  }
}
class TextFormFieldCustom  extends StatefulWidget
{
  final String text;
  final IconData icon;
  final TextInputType textInputType;
  // final Function(String para)? onSaveFunction;
  VoidCallback ? onTapeFunction;
  final FormFieldSetter<String> ? onSaveFunction;
  final Function(bool)? onChangeFunction;
  VoidCallback ? onEditingCompleteFunction;

  TextFormFieldCustom({this.text = "Preencha o campo", this.icon = Icons.collections_bookmark_sharp, this.onTapeFunction, this.onSaveFunction, this.onChangeFunction, this.onEditingCompleteFunction, this.textInputType = TextInputType.text});

  @override
  TextFormFieldCustomState createState() => TextFormFieldCustomState();
  // State<TextFormFieldCustomState> => TextFormFieldCustomState();

}