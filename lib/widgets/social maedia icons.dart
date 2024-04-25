import 'package:flutter/material.dart';

Widget socialMedia(icon, function) {
  return InkWell(
    onTap: function,
    child: CircleAvatar(
      backgroundColor: Colors.grey[200],
      child: Icon(icon),
    ),
  );
}