import 'package:flutter/material.dart';
import 'package:lab2/Components/dropdownbutton.dart';
import 'package:lab2/theme/app_theme.dart';
import 'package:lab2/Components/chipAndmc.dart';

// ignore: camel_case_types
class displayCardNumber extends StatefulWidget {
  dynamic arr;
  displayCardNumber(this.arr, {Key? key}) : super(key: key);

  @override
  State<displayCardNumber> createState() => _displayCardNumberState();
}

// ignore: camel_case_types
class _displayCardNumberState extends State<displayCardNumber> {
  Widget buildItems(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: (Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        for (var item in widget.arr)
          Text(
            item,
            style: const TextStyle(color: Colors.white, fontSize: 25),
          )
      ])),
    );
  }

  @override
  Widget build(BuildContext context) {
    return (buildItems(context));
  }
}
