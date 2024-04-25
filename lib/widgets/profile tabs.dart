import 'package:flutter/material.dart';

Widget profileTabs(width, icon, text, function) {
  return InkWell(
    onTap: function,
    child: Container(
      margin: EdgeInsets.all(8),
      child: Row(
        children: [
          SizedBox(
            width: width * 0.1,
          ),
          Icon(icon),
          SizedBox(
            width: width * 0.1,
          ),
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
          Spacer(),
          Icon(Icons.arrow_forward_ios_outlined)
        ],
      ),
    ),
  );
}