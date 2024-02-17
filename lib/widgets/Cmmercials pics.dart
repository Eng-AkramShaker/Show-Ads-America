import 'package:flutter/material.dart';
import 'package:for_sale/sccreens/Home/tabs/commDetails.dart';

Widget commercialPics(double height, double width, img,context) {
  return GestureDetector(
    child: Image.network(
      img,
      height: height,
      width: width,
      fit: BoxFit.fill,
    ),
    onTap: (){
      Navigator.push(context,MaterialPageRoute(builder: (context) => CommDetails(image: img),));
    },
  );
}
