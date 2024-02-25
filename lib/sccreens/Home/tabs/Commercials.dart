// ignore_for_file: unused_local_variable

import 'package:flexible_grid_view/flexible_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:for_sale/widgets/coustm%20texts.dart';

import '../../../widgets/Cmmercials pics.dart';
import '../../../widgets/search_bar.dart';

class Commercials extends StatefulWidget {
  const Commercials({super.key});
  static String routeName = "Commercials";

  @override
  State<Commercials> createState() => _CommercialsState();
}

class _CommercialsState extends State<Commercials> {
  @override
  Widget build(BuildContext context) {
    //items of the tab bar
    var tabItem = [
      customText(text: 'All', size: 18),
      customText(text: 'Motor', size: 18),
      customText(text: 'property', size: 18),
      customText(text: 'Genral Contracting & Crafts', size: 18),
      customText(text: 'Satellite', size: 18),
      customText(text: 'Electronics', size: 18),
      customText(text: 'Bugs Exterminator Service', size: 18),
      customText(text: 'Pack & Move', size: 18),
      customText(text: 'Painter', size: 18),
      customText(text: 'Furniture', size: 18),
      customText(text: 'Cleaning', size: 18),
      customText(text: 'Locks & Keys', size: 18),
      customText(text: 'AC', size: 18),
      customText(text: 'Miscellaneous', size: 18),
      customText(text: '4SALE', size: 18),
    ];
    int selectedIndex = 0;
    int count = 10;

    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              // search bar
              searchBar(),
              // this is the controller of tab bar
              DefaultTabController(
                length: tabItem.length,
                child: Column(
                  children: [
                    //tab bar for items
                    TabBar(
                        padding: const EdgeInsets.all(8),
                        indicatorWeight: 0.1,
                        labelColor: Colors.black12,
                        onTap: (index) {
                          selectedIndex = index;
                          setState(() {});
                        },
                        isScrollable: true,
                        tabs: tabItem),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: count * height / 6,
                  width: double.infinity,
                  child: FlexibleGridView(
                    physics: const NeverScrollableScrollPhysics(),

                    // axisCount: GridLayoutEnum.threeElementsInRow,
                    // crossAxisSpacing: 5,
                    // mainAxisSpacing: 5,
                    children: List.generate(
                      count,
                      (index) => InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: SizedBox(
                              height: 250,
                              width: 220,
                              child: commercialPics(double.infinity, double.infinity,
                                  "https://people.com/thmb/fsmp8lHFoKX5FH9JFffcHnE4Qzo=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():focal(539x0:541x2)/Popping-Bubbles-1-793efa18dea14eee899ce57412679d2a.jpg"),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
