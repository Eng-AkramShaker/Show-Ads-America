


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'coustm texts.dart';

Widget homeCategories(icon,String text,function){
  return InkWell(
    onTap: function,
    child: Container(
      height: 115,
      width: 115,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.black12,
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(icon),
          customText(text: text, size: 13)
        ],
      ),
    ),
  );
}