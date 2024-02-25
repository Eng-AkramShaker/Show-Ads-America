import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:for_sale/sccreens/Home/My_Home.dart';
import 'package:for_sale/sccreens/Home/tabs/Commercials.dart';
import 'package:for_sale/widgets/Home%20categories.dart';
import 'package:for_sale/widgets/buttons/Elevated%20Button.dart';
import 'package:for_sale/widgets/coustm%20texts.dart';
import 'package:for_sale/widgets/divider.dart';
import 'package:for_sale/widgets/search_bar.dart';

import '../../../widgets/Cmmercials pics.dart';
import '../../../widgets/Search bar pics.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var tabItem = [
      customText(text: "Top Users Ads", size: 15),
      customText(text: "Top Commercials Ads", size: 15),
    ];
    int selectedIndex = 0;
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              searchBar(),
              const SizedBox(
                height: 15,
              ),
              //for home categories
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  homeCategories(FontAwesomeIcons.car, "Automotive", () {}),
                  homeCategories(FontAwesomeIcons.home, "property", () {}),
                  homeCategories(FontAwesomeIcons.laptop, "Electronics", () {}),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  homeCategories(FontAwesomeIcons.buildingCircleCheck, "Contracting", () {}),
                  homeCategories(FontAwesomeIcons.servicestack, "Services", () {}),
                  homeCategories(FontAwesomeIcons.campground, "Camping", () {}),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  homeCategories(FontAwesomeIcons.dog, "Animals", () {}),
                  homeCategories(FontAwesomeIcons.tshirt, "Family", () {}),
                  homeCategories(FontAwesomeIcons.gifts, "Gifts", () {}),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  homeCategories(FontAwesomeIcons.chair, "Furniture", () {}),
                  homeCategories(FontAwesomeIcons.moneyCheckDollar, "Jobs", () {}),
                  homeCategories(FontAwesomeIcons.shoppingBasket, "Others", () {}),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              customText(text: "Commercial Ads", size: 30, fontweight: FontWeight.bold),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  //here commercials adds
                  children: [
                    searchBarPics(
                        height,
                        width,
                        "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                        "category",
                        "Description"),
                    searchBarPics(
                        height,
                        width,
                        "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                        "category",
                        "Description"),
                    searchBarPics(
                        height,
                        width,
                        "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                        "category",
                        "Description"),
                    searchBarPics(
                        height,
                        width,
                        "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                        "category",
                        "Description"),
                    searchBarPics(
                        height,
                        width,
                        "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                        "category",
                        "Description"),
                  ],
                ),
              ),
              //button of see more
              Row(
                children: [
                  Expanded(
                    child: elevatedButton("See All Commercials Adds", () {
                      Navigator.pushNamed(context, Commercials.routeName);
                    }),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              divider(),
              customText(text: "All in Automotive", size: 30, fontweight: FontWeight.bold),
              // this is the controller of tab bar
              DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    //tab bar for items
                    TabBar(
                      padding: const EdgeInsets.all(8),
                      onTap: (index) {
                        selectedIndex = index;
                        setState(() {});
                      },
                      tabs: tabItem,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          searchBarPics(
                              height,
                              width,
                              "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                              "category",
                              "Description"),
                          searchBarPics(
                              height,
                              width,
                              "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                              "category",
                              "Description"),
                          searchBarPics(
                              height,
                              width,
                              "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                              "category",
                              "Description"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              divider(),
              customText(text: "All in Property", size: 30, fontweight: FontWeight.bold),
              // this is the controller of tab bar
              DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    //tab bar for items
                    TabBar(
                      padding: const EdgeInsets.all(8),
                      onTap: (index) {
                        selectedIndex = index;
                        setState(() {});
                      },
                      tabs: tabItem,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          searchBarPics(
                              height,
                              width,
                              "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                              "category",
                              "Description"),
                          searchBarPics(
                              height,
                              width,
                              "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                              "category",
                              "Description"),
                          searchBarPics(
                              height,
                              width,
                              "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                              "category",
                              "Description"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              divider(),
              customText(text: "All in contracting", size: 30, fontweight: FontWeight.bold),
              // this is the controller of tab bar
              DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    //tab bar for items
                    TabBar(
                      padding: const EdgeInsets.all(8),
                      onTap: (index) {
                        selectedIndex = index;
                        setState(() {});
                      },
                      tabs: tabItem,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          searchBarPics(
                              height,
                              width,
                              "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                              "category",
                              "Description"),
                          searchBarPics(
                              height,
                              width,
                              "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                              "category",
                              "Description"),
                          searchBarPics(
                              height,
                              width,
                              "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                              "category",
                              "Description"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              divider(),
              customText(text: "All in camping", size: 30, fontweight: FontWeight.bold),
              // this is the controller of tab bar
              DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    //tab bar for items
                    TabBar(
                      padding: const EdgeInsets.all(8),
                      onTap: (index) {
                        selectedIndex = index;
                        setState(() {});
                      },
                      tabs: tabItem,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          searchBarPics(
                              height,
                              width,
                              "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                              "category",
                              "Description"),
                          searchBarPics(
                              height,
                              width,
                              "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                              "category",
                              "Description"),
                          searchBarPics(
                              height,
                              width,
                              "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                              "category",
                              "Description"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              divider(),
              customText(text: "All in Electronics", size: 30, fontweight: FontWeight.bold),
              // this is the controller of tab bar
              DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    //tab bar for items
                    TabBar(
                      padding: const EdgeInsets.all(8),
                      onTap: (index) {
                        selectedIndex = index;
                        setState(() {});
                      },
                      tabs: tabItem,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          searchBarPics(
                              height,
                              width,
                              "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                              "category",
                              "Description"),
                          searchBarPics(
                              height,
                              width,
                              "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                              "category",
                              "Description"),
                          searchBarPics(
                              height,
                              width,
                              "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                              "category",
                              "Description"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              divider(),
              customText(text: "All in services", size: 30, fontweight: FontWeight.bold),
              // this is the controller of tab bar
              DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    //tab bar for items
                    TabBar(
                      padding: const EdgeInsets.all(8),
                      onTap: (index) {
                        selectedIndex = index;
                        setState(() {});
                      },
                      tabs: tabItem,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          searchBarPics(
                              height,
                              width,
                              "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                              "category",
                              "Description"),
                          searchBarPics(
                              height,
                              width,
                              "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                              "category",
                              "Description"),
                          searchBarPics(
                              height,
                              width,
                              "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                              "category",
                              "Description"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
