import 'package:flutter/material.dart';
import 'package:for_sale/widgets/Adds%20Deatails%20vertical.dart';
import 'package:for_sale/widgets/divider.dart';
import 'package:for_sale/widgets/search_bar.dart';

class AutomotiveCat extends StatelessWidget {
  final String hintText;
  const AutomotiveCat({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              searchBar(hintText: hintText),
              divider(),
              addsDetailsVertical(
                  context: context,
                  height: height,
                  width: width,
                  img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                  catText: "Category",
                  desText: "Description",
                  price: "200 KWD" ),
              addsDetailsVertical(
                  context: context,
                  height: height,
                  width: width,
                  img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                  catText: "Category",
                  desText: "Description",
                  price: "200 KWD" ),
              addsDetailsVertical(
                  context: context,
                  height: height,
                  width: width,
                  img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                  catText: "Category",
                  desText: "Description",
                  price: "200 KWD" ),
              addsDetailsVertical(
                  context: context,
                  height: height,
                  width: width,
                  img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                  catText: "Category",
                  desText: "Description",
                  price: "200 KWD" ),
              addsDetailsVertical(
                  context: context,
                  height: height,
                  width: width,
                  img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                  catText: "Category",
                  desText: "Description",
                  price: "200 KWD" ),
            ],
          ),
        ),
      ),
    );
  }
}
