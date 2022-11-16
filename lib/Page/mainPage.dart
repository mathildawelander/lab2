// ignore_for_file: sized_box_for_whitespace

import 'dart:ffi';

import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:lab2/Components/KreditCard.dart';
import 'package:lab2/Components/KreditCardback.dart';
import 'package:lab2/Components/inputExpire.dart';
import 'package:lab2/Components/inputName.dart';
import 'package:lab2/Components/inputText.dart';
//import 'package:lab2/Components/MainController.dart';
import 'package:get/get.dart';

import 'package:flip_card/flip_card_controller.dart';

class MainPage extends StatefulWidget {
FlipCardController flipCardController =FlipCardController();


  String creditcardnumber= "";
  String CardHolder= "";
  var expire="";
  var year="";
  var cvv="";
  bool isFront = true;
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}
class _MainPageState extends State<MainPage> {


@override
void initState(){
  super.initState();
}

 callback(value){
  setState(() {
    widget.creditcardnumber = value;
  });
 }

callbackCardHolder(value){
  setState(() {
    widget.CardHolder = value;
  });
 }

callbackExpire(value){
  setState(() {
    widget.expire = value;
  });
 }

callbackExpireYear(value){
  setState(() {
    widget.year = value;
  });
 }

 callbackFunctioncvv(value){
  setState(() {
    widget.cvv = value;
  });
 }

callbackFlip(){
  if(widget.isFront){
    setState(() {
      widget.isFront= false;
  widget.flipCardController.toggleCard(); });}
  else {
  }
}

callbackFlipToFront(){
  if(!widget.isFront){
    setState(() {
      widget.isFront= true;
  widget.flipCardController.toggleCard(); });}
  else {
  }
}

 

String selectedValue = "1";
@override
  Widget build(BuildContext context) => Scaffold(
 
body: ListView(
shrinkWrap: true,
  scrollDirection: Axis.vertical,
      children:  [ 

        FlipCard(
          flipOnTouch: false,
        controller: widget.flipCardController,
        front: 
        KreditCard(widget.creditcardnumber,widget.CardHolder, widget.expire, widget.year, callbackFunction: callback) ,
        back:  KreditCardBack(  widget.cvv, callbackFunction: callbackFunctioncvv),
     ),
      Form(
      child: Container (
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
         child: Column(
        
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Card number"),
           
          inputText(callbackFunction: callback, flipFunction: callbackFlipToFront),
              
          const SizedBox(height: 10,),
             
          const Text("Card holders"),
          inputName(callbackFunction: callbackCardHolder, flipFunction: callbackFlipToFront),

          const SizedBox(height: 10,),
          
          inputExpire(callbackFunction: callbackExpire, callbackFunctionYear: callbackExpireYear,callbackFunctioncvv: callbackFunctioncvv , callbackFlip: callbackFlip, flipFunction: callbackFlipToFront),
              
          const SizedBox(height: 20,),

          SizedBox(
          
            child: ElevatedButton(
              style: ButtonStyle(padding: MaterialStateProperty.all<EdgeInsets>(
            const EdgeInsets.fromLTRB(153,0,153,0)),),
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
              },
              child: const Text('Submit', style: TextStyle(),),
            ),
          ),
        ],
      ),)
    ),
      ]
       )
    
  );
  
}



