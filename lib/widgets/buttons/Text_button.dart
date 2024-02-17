import 'package:flutter/material.dart';

Widget textButton(String text,function,{textColor}){
  return TextButton(onPressed: function, child: Text(text,style: TextStyle(color: textColor),));
}