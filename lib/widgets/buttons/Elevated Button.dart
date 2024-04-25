import 'package:flutter/material.dart';

Widget elevatedButton(String text,function,{backgroundColor,textColor}){
  return ElevatedButton(onPressed: function,
    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(backgroundColor)),
    child: Text(text,style: TextStyle(color: textColor),),);
}