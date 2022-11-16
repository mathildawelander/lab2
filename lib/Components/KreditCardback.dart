import 'package:flutter/material.dart';
import 'package:lab2/Components/displayCardNumber.dart';
import 'package:lab2/theme/app_theme.dart';
import 'package:lab2/Components/chipAndmc.dart';

import 'nameAndExpire.dart';

class KreditCardBack extends StatefulWidget {
  var cvv;
  String cardType;
  final Function callbackFunction;
  KreditCardBack(this.cvv, this.cardType,
      {Key? key, required this.callbackFunction})
      : super(key: key);

  @override
  State<KreditCardBack> createState() => _KreditCardBackState();
}

class _KreditCardBackState extends State<KreditCardBack> {
  var showfull = false;

  Widget buildItems(BuildContext context) {
    return Container(
      width: 300,
      height: 220,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(90, 116, 148, 0.4),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        image: const DecorationImage(
          image: AssetImage('assets/24.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 40,
          color: const Color.fromARGB(255, 0, 0, 0),
        ),
        Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
              child: const Text("CVV",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 249, 249),
                      fontSize: 13)),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.88,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.white,
              ),
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
              child: Text(widget.cvv,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0), fontSize: 15)),
            ),
          ],
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.88,
          alignment: Alignment.centerRight,
          child: Container(
            height: 60,
            width: 80,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/${widget.cardType}.png'),
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
        ),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return (buildItems(context));
  }
}
