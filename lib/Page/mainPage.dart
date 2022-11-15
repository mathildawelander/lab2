// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:lab2/Components/KreditCard.dart';
import 'package:lab2/Components/inputExpire.dart';
import 'package:lab2/Components/inputName.dart';
import 'package:lab2/Components/inputText.dart';

class MainPage extends StatefulWidget {
  String creditcardnumber= "";
  String CardHolder= "";
  var expire="";
  var year="";
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}
class _MainPageState extends State<MainPage> {

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

String selectedValue = "1";
@override
  Widget build(BuildContext context) => Scaffold(
 
body: ListView(
shrinkWrap: true,
  scrollDirection: Axis.vertical,
      children:  [ KreditCard(widget.creditcardnumber,widget.CardHolder, widget.expire, widget.year, callbackFunction: callback) ,
      
      
      Form(
      child: Container (
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
         child: Column(
        
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Card number"),
           
          inputText(callbackFunction: callback),
              
          const SizedBox(height: 10,),
             
          const Text("Card holders"),
          inputName(callbackFunction: callbackCardHolder),

          const SizedBox(height: 10,),
          
          inputExpire(callbackFunction: callbackExpire, callbackFunctionYear: callbackExpireYear),
              
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



