import 'package:flutter/material.dart';

import 'textField.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var fruits_list = ["Apple", "Orange", "Rambutan", "Grape", "Banana"];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MAD Assignment'),
        ),
        body: Column(
          children: [const Text(
        "Please Enter a number",
        style: TextStyle(fontSize: 18),
        textAlign: TextAlign.center,
      ),  MyTextField(fruits_list)],
        ),
      ),
    );
  }
}
