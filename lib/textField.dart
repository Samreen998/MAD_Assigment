// ignore: file_names
// ignore_for_file: file_names, deprecated_member_use, use_key_in_widget_constructors, prefer_const_constructors, non_constant_identifier_names, no_logic_in_create_state, unnecessary_this, prefer_typing_uninitialized_variables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final fruits_list;
  MyTextField(this.fruits_list);

  @override
  _MyTextField createState() => _MyTextField(fruits_list);
}

class _MyTextField extends State<MyTextField> {
  final fruits_list;
  final TextFieldController = TextEditingController();
  bool selected = false;
  var answer = "";

  @override
  void dispose() {
    TextFieldController.dispose();
    super.dispose();
  }

  _MyTextField(this.fruits_list);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            controller: TextFieldController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Only numbers',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: RaisedButton(
            color: Colors.pink,
            onPressed: () => {
              if ((int.parse(TextFieldController.text)) > fruits_list.length)
                {
                  setState(() {
                    this.selected = true;
                    this.answer = "Invalid";
                  })
                }
                else{
                setState(() {
                    this.selected = true;
                    this.answer = fruits_list[(int.parse(TextFieldController.text))-1];
                  })
                }
            },
            child: Text("Enter"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Visibility(
            visible: selected,
            child: Text(
              answer,
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
