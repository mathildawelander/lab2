import 'package:flutter/material.dart';
import 'package:lab2/theme/app_theme.dart';
import 'package:lab2/Components/chipAndmc.dart';

class inputText extends StatefulWidget {
  
 final Function callbackFunction;
   final Function flipFunction;
  inputText(  {Key? key, required this.callbackFunction, required this.flipFunction}) : super(key: key);

  @override
  State<inputText> createState() => _inputTextState();

}

class _inputTextState extends State<inputText> {
 var showfull = false; 

  Widget buildItems(BuildContext context) {
    return TextField(           
                decoration: const InputDecoration(
                  
                    labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                    border: OutlineInputBorder(),
                
                ),
                onChanged: (value) {
                 setState(() {
                  widget.callbackFunction(value);
                  });
                },
                onTap: () {
                  widget.flipFunction();
                },
              );
}

    @override
  Widget build(BuildContext context) {
    

    return(
        buildItems(context)
    );
  }
}

