import 'package:flutter/material.dart';
import 'package:lab2/theme/app_theme.dart';

class chipAndmc extends StatefulWidget {
  
 // var showfull =false;
  chipAndmc( {Key? key}) : super(key: key);

  @override
  State<chipAndmc> createState() => _chipAndmcState();
}

class _chipAndmcState extends State<chipAndmc> {
 var showfull = false; 
 

  Widget buildItems(BuildContext context) {
 
  return Row(
    mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
children: [
  Container(
 height: 50,
 width: 65,
 margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
       decoration:
       BoxDecoration(      
                      borderRadius: BorderRadius.circular(10),
                         
                      image: const DecorationImage(
                      image: AssetImage('assets/chip.png'),
                    fit: BoxFit.cover,
                    ),
       ),),   Container(
 height: 50,
 width: 64.1,
 margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
       decoration:
       const BoxDecoration(      
                         
                      image: DecorationImage(
                      image: AssetImage('assets/mastercard.png'),
                    fit: BoxFit.cover,
                    ),
       ),), 
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



