import 'package:flutter/material.dart';
import 'package:lab2/Components/displayCardNumber.dart';
import 'package:lab2/theme/app_theme.dart';
import 'package:lab2/Components/chipAndmc.dart';

import 'nameAndExpire.dart';

class KreditCard extends StatefulWidget {
   String cardHolder="";
 var expire;
 var year;
 String arrayofnumber="";
 final Function callbackFunction;
  KreditCard( this.arrayofnumber, this.cardHolder, this.expire, this.year, {Key? key, required this.callbackFunction}) : super(key: key);

  @override
  State<KreditCard> createState() => _KreditCardState();

}



class _KreditCardState extends State<KreditCard> {
 var showfull = false; 

 
  Widget buildItems(BuildContext context) {
  dynamic arr =[];
  if(widget.arrayofnumber=="")
  {
    arr.add("#");
  }
   else{ arr=  widget.arrayofnumber.split(''); }

  return Container(
    width: 300,
 height: 220,
 margin: const EdgeInsets.all(10),
       decoration:
        
       BoxDecoration(      
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
    child: Column(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: [ chipAndmc(),

Container(
  width: 350,
  decoration:  
       BoxDecoration(      
                      borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.white)
                           ),
  child: displayCardNumber(arr),
 
    ),
  
        nameAndExpire(widget.cardHolder, widget.expire, widget.year), 
    ]), 
    );

}

    @override
  Widget build(BuildContext context) {
    

    return(
        buildItems(context)
    );
  }
}

