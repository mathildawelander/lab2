import 'package:flutter/material.dart';
import 'package:lab2/Components/displayCardNumber.dart';
import 'package:lab2/theme/app_theme.dart';
import 'package:lab2/Components/chipAndmc.dart';

import 'nameAndExpire.dart';

class KreditCard extends StatefulWidget {
  String cardHolder = "";
  var expire;
  var year;
  var arrayofnumber = [];
  String cardType = "";
  final Function callbackFunction;
  KreditCard(this.arrayofnumber, this.cardType, this.cardHolder, this.expire,
      this.year,
      {Key? key, required this.callbackFunction})
      : super(key: key);

  @override
  State<KreditCard> createState() => _KreditCardState();
}

class _KreditCardState extends State<KreditCard> {
  var showfull = false;

  Widget buildItems(BuildContext context) {
    dynamic inputArray = widget.arrayofnumber.split('');
    int inputLength = inputArray.length;
    String cardType = "mastercard";

    //Visa, Mastercard, Discover
    int cardNumberLength = 16;

    if (inputLength > 1 && inputArray[0] == "3") {
      if (inputArray[1] == "4" || inputArray[1] == "7") {
        //American Express
        cardType = "amex";
        cardNumberLength = 15;
      } else if (inputArray[1] == "0" ||
          inputArray[1] == "6" ||
          inputArray[1] == "8") {
        //Diners Club,Carte Blanche
        cardType = "dinersclub";
        cardNumberLength = 14;
      }
    } else if (inputLength > 0) {
      if (inputArray[0] == "4") {
        cardType = "visa";
      } else if (inputArray[0] == "6") {
        cardType = "discover";
      }
    }

    String outputText = '';
    for (int i = 0; i < cardNumberLength; i++) {
      if (i >= inputLength) {
        outputText += "#";
      } else {
        outputText += inputArray[i];
      }
    }
    var outputTextArray = outputText
        .replaceAllMapped(RegExp(r".{4}"), (match) => "${match.group(0)} ")
        .split('');

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
        chipAndmc(widget.cardType),
        Container(
          width: 350,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.white)),
          child: displayCardNumber(widget.arrayofnumber),
        ),
        nameAndExpire(widget.cardHolder, widget.expire, widget.year),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return (buildItems(context));
  }
}
