import 'package:flutter/material.dart';

Widget textField(String text,bool numbersOnly){
  return TextField(
    keyboardType: numbersOnly? TextInputType.number : TextInputType.visiblePassword,
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      hintText: text,

    ),
  );
}