import 'package:flutter/material.dart';
import 'package:lab2/Components/dropdownbutton.dart';
import 'package:lab2/theme/app_theme.dart';
import 'package:lab2/Components/chipAndmc.dart';

class inputExpire extends StatefulWidget {
  
 final Function callbackFunction;
  final Function callbackFunctionYear;
  inputExpire(  {Key? key, required this.callbackFunction,  required this.callbackFunctionYear}) : super(key: key);

  @override
  State<inputExpire> createState() => _inputExpireState();

}



class _inputExpireState extends State<inputExpire> {




  Widget buildItems(BuildContext context) {
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
      Container(
      width: 100.0,
      
      decoration: BoxDecoration( 
                      borderRadius: BorderRadius.circular(5),border: Border.all(color: Colors.black38)
                          ),
       child: DropdownButtonExpire(callbackFunction: widget.callbackFunction)
    ),

    Container(
      width: 100.0,
      decoration: BoxDecoration( 
                      borderRadius: BorderRadius.circular(5),border: Border.all(color: Colors.black38)
                          ),
       child:DropdownButtonExpire(callbackFunction: widget.callbackFunctionYear)
    ),
    const SizedBox(
      width: 100.0,
      
      child:TextField(
                decoration: InputDecoration(
                    labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                    border: OutlineInputBorder(),
                       contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      
                )
              ),
    )
  ],
            );
}

    @override
  Widget build(BuildContext context) {
    

    return(
        buildItems(context)
    );
  }
}

