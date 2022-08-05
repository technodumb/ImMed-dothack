import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'state_for_slider.dart';


class MyTextField extends StatelessWidget {
  const MyTextField({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textFieldState = Provider.of<SliderState>(context);


    return TextField(
      decoration: const InputDecoration(
        hintText: "hellooo",
      ),
      // controller: fieldController,
      onChanged: (value){
        if (kDebugMode) {
          print(value);
        }
        textFieldState.fieldText = value;
      }
    );
  }
}


class MyTextBox extends StatelessWidget {
  const MyTextBox({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final textFieldState = Provider.of<SliderState>(context);
    return Text(
      textFieldState.fieldText.toString(), 
      // "dfsdf",
      style: const TextStyle(color : Colors.black),
    );
  }
}