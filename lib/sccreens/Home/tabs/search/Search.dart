import 'package:flutter/material.dart';
import 'package:for_sale/widgets/buttons/Text_button.dart';
import 'package:for_sale/widgets/coustm%20texts.dart';
import 'package:for_sale/widgets/divider.dart';

import '../../../../widgets/Search bar pics.dart';
import '../../../../widgets/Trending words.dart';
import '../../../../widgets/search_bar.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // search bar
              searchBar(),
              SizedBox(
                height: height * 0.015,
              ),
              // this row for text pinned ads and button text show more
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customText(text: "Pinned Ads", size: 20, fontweight: FontWeight.bold),
                  textButton("Show more", () {}),
                ],
              ),
              customText(text: "Post an Ad, choose spotlight and appear here!", size: 20, fontweight: FontWeight.w100),
              // this scroll for the pics of pinned adds
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      searchBarPics(
                          height,
                          width,
                          "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                          "category",
                          "Description",
                      price: "28 KWD",hours: "2 hours"),
                      searchBarPics(
                          height,
                          width,
                          "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                          "category",
                          "Description",
                          price: "28 KWD",hours: "2 hours"),
                      searchBarPics(
                          height,
                          width,
                          "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                          "category",
                          "Description",
                          price: "28 KWD",hours: "2 hours"),
                      searchBarPics(
                          height,
                          width,
                          "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                          "category",
                          "Description",
                          price: "28 KWD",hours: "2 hours"),
                      searchBarPics(
                          height,
                          width,
                          "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                          "category",
                          "Description",
                          price: "28 KWD",hours: "2 hours"),
                      searchBarPics(
                          height,
                          width,
                          "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                          "category",
                          "Description"),
                    ],
                  )),
              divider(),
              customText(text: "Trending", size: 20, fontweight: FontWeight.bold),

              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          trendingWords(height, width, "Trend word"),
                          trendingWords(height, width, "Trend word"),
                          trendingWords(height, width, "Trend word"),
                        ],
                      ),
                      Row(
                        children: [
                          trendingWords(height, width, "Trend word"),
                          trendingWords(height, width, "Trend word"),
                          trendingWords(height, width, "Trend word"),
                        ],
                      ),
                    ],
                  )),
              divider(),
              customText(text: "Recommended", size: 20, fontweight: FontWeight.bold),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      searchBarPics(
                          height,
                          width,
                          "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                          "category",
                          "Description",
                          price: "28 KWD",hours: "2 hours"),
                      searchBarPics(
                          height,
                          width,
                          "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                          "category",
                          "Description",
                          price: "28 KWD",hours: "2 hours"),
                      searchBarPics(
                          height,
                          width,
                          "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                          "category",
                          "Description",
                          price: "28 KWD",hours: "2 hours"),
                      searchBarPics(
                          height,
                          width,
                          "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                          "category",
                          "Description",
                          price: "28 KWD",hours: "2 hours"),
                      searchBarPics(
                          height,
                          width,
                          "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                          "category",
                          "Description",
                          price: "28 KWD",hours: "2 hours"),
                      searchBarPics(
                          height,
                          width,
                          "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                          "category",
                          "Description"),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
