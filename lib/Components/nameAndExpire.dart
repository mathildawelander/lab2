import 'package:flutter/material.dart';
import 'package:lab2/theme/app_theme.dart';
import 'package:lab2/Components/chipAndmc.dart';

class nameAndExpire extends StatefulWidget {
  
 String cardHolder="";
 var expire;
 var year;
  nameAndExpire( this.cardHolder, this.expire, this.year, {Key? key}) : super(key: key);

  @override
  State<nameAndExpire> createState() => _nameAndExpireState();
}

class _nameAndExpireState extends State<nameAndExpire> {
 var showfull = false; 
 
 Widget buildItems(BuildContext context) {
 var h= widget.expire;
 var s= widget.year; 
    
  return 
    Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:[
    Column(children: [
      Text( "Card Holder", style: TextStyle(color: Color.fromARGB(255, 212, 212, 212), fontSize: 13),),
      Text( widget.cardHolder, style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 17),),

    ],),

    Column(children: [
      Text( "Expires", style: TextStyle(color: Color.fromARGB(255, 212, 212, 212), fontSize: 13),),
      Text( "$h/$s", style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 17),),

    ],)]
    );
}
    @override
  Widget build(BuildContext context) {
    

    return(
        buildItems(context)
    );
  }
}

