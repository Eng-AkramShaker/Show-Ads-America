
import 'package:flutter/material.dart';

Text customText({required text, required double size, color, fontweight,textAlign}) {
  return Text(
    text ?? '',
    textAlign: textAlign ?? TextAlign.center,
    style: TextStyle(
      color: color ?? Colors.black,
      fontSize: size ?? 20,
      fontWeight: fontweight ?? FontWeight.normal,

    ),
  );
}