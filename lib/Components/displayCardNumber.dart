import 'package:flutter/material.dart';
import 'package:lab2/Components/dropdownbutton.dart';
import 'package:lab2/theme/app_theme.dart';
import 'package:lab2/Components/chipAndmc.dart';

class displayCardNumber extends StatefulWidget {
  
  dynamic arr;
  displayCardNumber( this.arr, {Key? key}) : super(key: key);

  @override
  State<displayCardNumber> createState() => _displayCardNumberState();

}



class _displayCardNumberState extends State<displayCardNumber> {




  Widget buildItems(BuildContext context) {
    return (
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        Container( margin: EdgeInsets.fromLTRB(15, 0, 15, 0), child: Row(children: [
        Text( widget.arr[0], style:  TextStyle(color: Colors.white, fontSize: 25),),
        widget.arr.length>1? Text( widget.arr[1], style: TextStyle(color: Colors.white, fontSize: 25),):Text( "#", style: TextStyle(color: Colors.white, fontSize: 25),),
        widget.arr.length>2? Text( widget.arr[2], style: TextStyle(color: Colors.white, fontSize: 25),):Text( "#", style: TextStyle(color: Colors.white, fontSize: 25),),
        widget.arr.length>3? Text( widget.arr[3], style: TextStyle(color: Colors.white, fontSize: 25),):Text( "#", style: TextStyle(color: Colors.white, fontSize: 25),),
        ],),),
         Container( margin: EdgeInsets.fromLTRB(0, 0, 15, 0), child: Row(children: [
        widget.arr.length>4? Text( widget.arr[4], style: TextStyle(color: Colors.white, fontSize: 25),):Text( "#", style: TextStyle(color: Colors.white, fontSize: 25),),
        widget.arr.length>5? Text( widget.arr[5], style: TextStyle(color: Colors.white, fontSize: 25),):Text( "#", style: TextStyle(color: Colors.white, fontSize: 25),),
        widget.arr.length>6? Text( widget.arr[6], style: TextStyle(color: Colors.white, fontSize: 25),):Text( "#", style: TextStyle(color: Colors.white, fontSize: 25),),
        widget.arr.length>7? Text( widget.arr[7], style: TextStyle(color: Colors.white, fontSize: 25),):Text( "#", style: TextStyle(color: Colors.white, fontSize: 25),),
        
        ],),),

         Container( margin: EdgeInsets.fromLTRB(0, 0, 10, 0), child: Row(children: [
        widget.arr.length>8? Text( widget.arr[8], style: TextStyle(color: Colors.white, fontSize: 25),):Text( "#", style: TextStyle(color: Colors.white, fontSize: 25),),
        widget.arr.length>9? Text( widget.arr[9], style: TextStyle(color: Colors.white, fontSize: 25),):Text( "#", style: TextStyle(color: Colors.white, fontSize: 25),),
        widget.arr.length>10? Text( widget.arr[10], style: TextStyle(color: Colors.white, fontSize: 25),):Text( "#", style: TextStyle(color: Colors.white, fontSize: 25),),
        widget.arr.length>11? Text( widget.arr[11], style: TextStyle(color: Colors.white, fontSize: 25),):Text( "#", style: TextStyle(color: Colors.white, fontSize: 25),),
        
        ],),),

        Container( margin: EdgeInsets.fromLTRB(0, 0, 15, 0), child: Row(children: [
        widget.arr.length>12? Text( widget.arr[12], style: TextStyle(color: Colors.white, fontSize: 25),):Text( "#", style: TextStyle(color: Colors.white, fontSize: 25),),
        widget.arr.length>13? Text( widget.arr[13], style: TextStyle(color: Colors.white, fontSize: 25),):Text( "#", style: TextStyle(color: Colors.white, fontSize: 25),),
        widget.arr.length>14? Text( widget.arr[14], style: TextStyle(color: Colors.white, fontSize: 25),):Text( "#", style: TextStyle(color: Colors.white, fontSize: 25),),
        widget.arr.length>15? Text( widget.arr[15], style: TextStyle(color: Colors.white, fontSize: 25),):Text( "#", style: TextStyle(color: Colors.white, fontSize: 25),),
        
        ],),)
    
    ]
    )
    );


}

    @override
  Widget build(BuildContext context) {
    

    return(
        buildItems(context)
    );
  }
}

