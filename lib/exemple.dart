import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class WriteExamples extends StatefulWidget
{
  @override
  _WriteExamplesState createState() => _WriteExamplesState();

}

class _WriteExamplesState extends State<WriteExamples>
{
  final database = FirebaseDatabase.instance.reference();

  @override
  Widget build(BuildContext context)
  {
    final dailySpecial = database.child("/dailySpecial");

    return Scaffold(
      appBar: AppBar(title: Text("Hello"),),
      body: Center(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () async{
                    try {
                      await dailySpecial.set({'desc': 'Hello'});
                      print("Well done");
                    }catch(e)
                    {
                      print("Tens um erro");
                    }
                  }
                                
                  , child: Text("set up"))
            ],
          ),
        ),
      ),
    );
  }
}