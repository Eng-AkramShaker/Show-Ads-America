import 'package:flutter/material.dart';

Widget commercialPics(double height, double width, img) {
  return Image.network(
    img,
    height: height,
    width: width,
    fit: BoxFit.fill,
  );
}
