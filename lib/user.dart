

import 'package:flutter/material.dart';

class CheckList extends StatefulWidget {
  @override
  _CheckListState createState() => _CheckListState();
}

class _CheckListState extends State<CheckList> {
  Map<String,bool> values = {
    "JavaScript": false,
    "PHP": false,
    "Java":false,
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkbox"),
      ),
      body: ListView(
        children: values.keys.map((String key){
          return CheckboxListTile(
            title: Text(key),
            value: values[key],
            onChanged: (bool value){
              setState(() {
                values[key] = value ;
              });
            },
          );
       }).toList(),
    ),
    );
  }
}