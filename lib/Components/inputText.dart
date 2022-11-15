import 'package:flutter/material.dart';
import 'package:lab2/theme/app_theme.dart';
import 'package:lab2/Components/chipAndmc.dart';

class inputText extends StatefulWidget {
  
 final Function callbackFunction;
  inputText(  {Key? key, required this.callbackFunction}) : super(key: key);

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
              );
}

    @override
  Widget build(BuildContext context) {
    

    return(
        buildItems(context)
    );
  }
}

