import 'package:flutter/material.dart';

Widget trendingWords(height,width,text,){
  return Container(
    padding: EdgeInsets.all(8),
    margin: EdgeInsets.all(9),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      boxShadow: [
        BoxShadow(color: Colors.black12,)
      ],
    ),
    child: InkWell(
      onTap: (){},
      child: Text(text, style:
      TextStyle(fontWeight: FontWeight.w300, fontSize: 20),),
    ),
  );
}