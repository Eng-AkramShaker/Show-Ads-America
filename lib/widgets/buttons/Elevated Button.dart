import 'package:flutter/material.dart';

Widget elevatedButton(String text,function){
  return ElevatedButton(onPressed: function, child: Text(text),);
}