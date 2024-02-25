import 'package:flutter/material.dart';

Widget textButton(String text,function){
  return TextButton(onPressed: function, child: Text(text));
}