
import 'package:flutter/material.dart';

Widget searchBar(){
  return TextField(
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      hintText: 'Search for anything',

    ),
  );
}