
import 'package:flutter/material.dart';

Widget searchBar({hintText}){
  return TextField(
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      hintText: hintText??'Search for anything',

    ),
  );
}