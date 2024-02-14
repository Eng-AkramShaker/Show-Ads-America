
import 'package:flutter/material.dart';

Text customText({required text, required double size, color, fontweight}) {
  return Text(
    text ?? '',
    style: TextStyle(
      color: color ?? Colors.black,
      fontSize: size ?? 20,
      fontWeight: fontweight ?? FontWeight.normal,
    ),
  );
}