import 'package:flutter/material.dart';
import 'package:for_sale/widgets/coustm%20texts.dart';

import '../../../../widgets/Search bar pics.dart';


class RecentlyViewed extends StatefulWidget {
  static String routeName ='Recently Viewed';
  const RecentlyViewed({super.key});

  @override
  State<RecentlyViewed> createState() => _RecentlyViewedState();
}

class _RecentlyViewedState extends State<RecentlyViewed> {
  // this is an object to take function from search class


  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width =MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: customText(text: 'My Recently Viewed', size: 20,),

        backgroundColor: Colors.white,
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2
        ),
        children: [
          //this the function of search under pinned adds
          searchBarPics(
              height:height*0.3,
              width:width*0.5,
              img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
              catText: "category",
              desText: "Description",
              context: context),
          searchBarPics(
              height:height*0.3,
              width:width*0.5,
              img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
              catText: "category",
              desText: "Description",
              context: context),
          searchBarPics(
              height:height*0.3,
              width:width*0.5,
              img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
              catText: "category",
              desText: "Description",
              context: context),
          searchBarPics(
              height:height*0.3,
              width:width*0.5,
              img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
              catText: "category",
              desText: "Description",
              context: context),
          searchBarPics(
              height:height*0.3,
              width:width*0.5,
              img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
              catText: "category",
              desText: "Description",
              context: context),
          searchBarPics(
              height:height*0.3,
              width:width*0.5,
              img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
              catText: "category",
              desText: "Description",
              context: context),
          searchBarPics(
              height:height*0.3,
              width:width*0.5,
              img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
              catText: "category",
              desText: "Description",
              context: context),
          searchBarPics(
              height:height*0.3,
              width:width*0.5,
              img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
              catText: "category",
              desText: "Description",
              context: context),
          searchBarPics(
              height:height*0.3,
              width:width*0.5,
              img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
              catText: "category",
              desText: "Description",
              context: context),
          searchBarPics(
              height:height*0.3,
              width:width*0.5,
              img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
              catText: "category",
              desText: "Description",
              context: context),
          searchBarPics(
              height:height*0.3,
              width:width*0.5,
              img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
              catText: "category",
              desText: "Description",
              context: context),
          searchBarPics(
              height:height*0.3,
              width:width*0.5,
              img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
              catText: "category",
              desText: "Description",
              context: context),
          searchBarPics(
              height:height*0.3,
              width:width*0.5,
              img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
              catText: "category",
              desText: "Description",
              context: context),
          searchBarPics(
              height:height*0.3,
              width:width*0.5,
              img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
              catText: "category",
              desText: "Description",
              context: context),
          searchBarPics(
              height:height*0.3,
              width:width*0.5,
              img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
              catText: "category",
              desText: "Description",
              context: context),
          searchBarPics(
              height:height*0.3,
              width:width*0.5,
              img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
              catText: "category",
              desText: "Description",
              context: context),
          searchBarPics(
              height:height*0.3,
              width:width*0.5,
              img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
              catText: "category",
              desText: "Description",
              context: context),
          searchBarPics(
              height:height*0.3,
              width:width*0.5,
              img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
              catText: "category",
              desText: "Description",
              context: context),
          searchBarPics(
              height:height*0.3,
              width:width*0.5,
              img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
              catText: "category",
              desText: "Description",
              context: context),
          searchBarPics(
              height:height*0.3,
              width:width*0.5,
              img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
              catText: "category",
              desText: "Description",
              context: context),
          searchBarPics(
              height:height*0.3,
              width:width*0.5,
              img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
              catText: "category",
              desText: "Description",
              context: context),
          searchBarPics(
              height:height*0.3,
              width:width*0.5,
              img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
              catText: "category",
              desText: "Description",
              context: context),        ],
      ),
    );
  }
}
