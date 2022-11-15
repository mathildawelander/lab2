import 'package:flutter/material.dart';
import 'package:lab2/theme/app_theme.dart';
import 'package:lab2/Components/chipAndmc.dart';


List<String> list = <String>["1", "2", "3", "4"];

class DropdownButtonExpire extends StatefulWidget {
  

  final Function callbackFunction;
  
  DropdownButtonExpire({super.key, required this.callbackFunction});

  @override
  State<DropdownButtonExpire> createState() => _DropdownButtonExpireState();
}

class _DropdownButtonExpireState extends State<DropdownButtonExpire> {

  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        widget.callbackFunction(value);
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
