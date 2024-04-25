import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:for_sale/sccreens/Home/tabs/profile/Recently_viewed.dart';
import 'package:for_sale/widgets/buttons/Text_button.dart';
import 'package:for_sale/widgets/coustm%20texts.dart';

import '../../../widgets/Search bar pics.dart';

class AddsDetails extends StatelessWidget {
  static String routeName="adds details";
  const AddsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_border_outlined)),
            IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.mailForward)),
          ],
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(

            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ImageSlideshow(
                    children: [
                      Image.network("https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                        fit: BoxFit.cover,),
                      Image.network("https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                        fit: BoxFit.cover,),
                      Image.network("https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                        fit: BoxFit.cover,),
                    ] ),
                const Divider(
                  thickness: 5,
                ),
                 Row(
                  children: [
                    const Icon(Icons.remove_red_eye_outlined,color: Colors.grey,),
                    customText(text: "4500 Views", size: 15,color: Colors.grey),
                    const SizedBox(
                      width: 15,
                    ),
                    const Icon(Icons.watch_later_outlined,color: Colors.grey,),
                    customText(text: "1 Day", size: 15,color: Colors.grey),
                    const SizedBox(
                      width: 15,
                    ),
                    textButton("Mustang", (){

                    },textColor: Colors.blue),
                  ],
                ),
                customText(text: "موستنج كوبرا", size: 20,),
                customText(text: "6500 KWD", size: 20,color: Colors.blue,fontweight: FontWeight.bold),
                Row(
                  children: [
                    const Icon(Icons.location_on_outlined,color: Colors.grey,),
                    customText(text: "The add Location", size: 15,color: Colors.grey,fontweight: FontWeight.w500),
                  ],
                ),
                const Divider(
                  thickness: 5,
                ),
                customText(text: "Specification", size: 20,fontweight: FontWeight.bold),
                Row(
                  children: [
                    Container(
                      margin:  const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: Row(
                        children: [
                          const Icon(Icons.color_lens_outlined),
                          customText(text: "Green", size: 20),
                        ],
                      ),
                    ),
                    Container(
                      margin:  const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: Row(
                        children: [
                          const Icon(Icons.calendar_month),
                          customText(text: "1996", size: 20),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin:  const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: Row(
                        children: [
                          const Icon(Icons.car_repair),

                          customText(text: "Sport Car", size: 20),
                        ],
                      ),
                    ),
                    Container(
                      margin:  const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: Row(
                        children: [
                          const Icon(FontAwesomeIcons.carSide),
                          const SizedBox(width: 7,),
                          customText(text: "200 KM", size: 20),
                        ],
                      ),
                    ),
                  ],
                ),
                const Divider(
                  thickness: 5,
                ),
                customText(text: "Description", size: 20,fontweight: FontWeight.bold),
                customText(text: "My Description bla bla bla bla bla", size: 15,color: Colors.grey),
                const Divider(
                  thickness: 5,
                ),
                customText(text: "Location", size: 20,fontweight: FontWeight.bold),
                customText(text: "Farwaniyah", size: 15,color: Colors.grey),
                const Divider(
                  thickness: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customText(text: "Ad ID:2093940", size: 15,color: Colors.grey),
                    textButton("Report Ad", (){},textColor: Colors.red),

                  ],
                ),
                const Divider(
                  thickness: 5,
                ),
                Row(
                  children: [
                    //this for profile img
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.grey,
                      child:  customText( text:'AH', size: 20, ),
                    ),

                    const SizedBox(
                      width: 15,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "User",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        AutoSizeText(
                          "2 Ads   Member Since 2022",
                          minFontSize: 12,
                          maxFontSize: 20,
                          overflow: TextOverflow.ellipsis,
                        ),

                      ],
                    )
                  ],
                ),
                const Divider(
                  thickness: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customText(text: "Mustang Ads", size: 20, fontweight: FontWeight.bold),
                    textButton("see All", (){},textColor: Colors.blue),
                  ],
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        searchBarPics(
                            height: height,
                            width: width,
                            img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                            catText: "category",
                            desText: "Description",context: context,
                            price: "28 KWD",hours: "2 hours"),
                        searchBarPics(
                            height: height,
                            width: width,
                            img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                            catText: "category",
                            desText: "Description",context: context,
                            price: "28 KWD",hours: "2 hours"),
                        searchBarPics(
                            height: height,
                            width: width,
                            img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                            catText: "category",
                            desText: "Description",context: context,
                            price: "28 KWD",hours: "2 hours"),
                        searchBarPics(
                            height: height,
                            width: width,
                            img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                            catText: "category",
                            desText: "Description",context: context,
                            price: "28 KWD",hours: "2 hours"),
                        searchBarPics(
                            height: height,
                            width: width,
                            img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                            catText: "category",
                            desText: "Description",context: context,
                            price: "28 KWD",hours: "2 hours"),
                        searchBarPics(
                            height: height,
                            width: width,
                            img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                            catText: "category",
                            desText: "Description",context: context),
                      ],
                    )),
                const Divider(
                  thickness: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customText(text: "Recently Viewed", size: 20, fontweight: FontWeight.bold),
                    textButton("see All", (){
                      Navigator.pushNamed(context, RecentlyViewed.routeName);
                    },textColor: Colors.blue),
                  ],
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        searchBarPics(
                            height: height,
                            width: width,
                            img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                            catText: "category",
                            desText: "Description",context: context,
                            price: "28 KWD",hours: "2 hours"),
                        searchBarPics(
                            height: height,
                            width: width,
                            img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                            catText: "category",
                            desText: "Description",context: context,
                            price: "28 KWD",hours: "2 hours"),
                        searchBarPics(
                            height: height,
                            width: width,
                            img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                            catText: "category",
                            desText: "Description",context: context,
                            price: "28 KWD",hours: "2 hours"),
                        searchBarPics(
                            height: height,
                            width: width,
                            img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                            catText: "category",
                            desText: "Description",context: context,
                            price: "28 KWD",hours: "2 hours"),
                        searchBarPics(
                            height: height,
                            width: width,
                            img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                            catText: "category",
                            desText: "Description",context: context,
                            price: "28 KWD",hours: "2 hours"),
                        searchBarPics(
                            height: height,
                            width: width,
                            img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                            catText: "category",
                            desText: "Description",context: context),
                      ],
                    )),
                const Divider(
                  thickness: 5,
                ),
                customText(text: "Recommended", size: 20, fontweight: FontWeight.bold),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        searchBarPics(
                            height: height,
                            width: width,
                            img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                            catText: "category",
                            desText: "Description",context: context,
                            price: "28 KWD",hours: "2 hours"),
                        searchBarPics(
                            height: height,
                            width: width,
                            img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                            catText: "category",
                            desText: "Description",context: context,
                            price: "28 KWD",hours: "2 hours"),
                        searchBarPics(
                            height: height,
                            width: width,
                            img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                            catText: "category",
                            desText: "Description",context: context,
                            price: "28 KWD",hours: "2 hours"),
                        searchBarPics(
                            height: height,
                            width: width,
                            img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                            catText: "category",
                            desText: "Description",context: context,
                            price: "28 KWD",hours: "2 hours"),
                        searchBarPics(
                            height: height,
                            width: width,
                            img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                            catText: "category",
                            desText: "Description",context: context,
                            price: "28 KWD",hours: "2 hours"),
                        searchBarPics(
                            height: height,
                            width: width,
                            img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                            catText: "category",
                            desText: "Description",context: context),
                      ],
                    )),
              ],
            ),
          ),
        ]
      ),
    );
  }
}
