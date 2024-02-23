import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../widgets/Home categories.dart';
import '../../../../../widgets/Search bar pics.dart';
import '../../../../../widgets/buttons/Text_button.dart';
import '../../../../../widgets/coustm texts.dart';
import '../../../../../widgets/divider.dart';
import '../../../../../widgets/search_bar.dart';
import '../automative/Automotive Cat.dart';

class Electronics extends StatelessWidget {
  static String routeName="Electronics";
  const Electronics({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //this rows for the categories of automotive
              searchBar(hintText: routeName),
              divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  homeCategories(FontAwesomeIcons.mobile, "Mobiles", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Mobiles"),));
                  }),
                  homeCategories(FontAwesomeIcons.tablet, "Tablets", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Tablets"),));
                  }),
                  homeCategories(FontAwesomeIcons.camera, "Cameras", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Cameras"),));
                  }),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  homeCategories(FontAwesomeIcons.gamepad, "Video Games", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Video Games"),));
                  }),
                  homeCategories(FontAwesomeIcons.simCard, "SIM", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "SIM"),));
                  }),
                  homeCategories(FontAwesomeIcons.headset, "Audio", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Audio"),));
                  }),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  homeCategories(FontAwesomeIcons.gear, "Electronic Service", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Electronic Service"),));
                  }),
                  homeCategories(FontAwesomeIcons.laptop, "Laptop & Computer", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Laptop & Computer"),));
                  }),
                  homeCategories(Icons.signal_cellular_alt_sharp, "Devices & Networking", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Devices & Networking"),));
                  }),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  homeCategories(Icons.watch, "Smart Watch", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Smart Watch"),));
                  }),
                  homeCategories(FontAwesomeIcons.tv, "Smart TV", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Smart TV"),));
                  }),
                  homeCategories(FontAwesomeIcons.homeLg, "Home Appliance", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Home Appliance"),));
                  }),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  homeCategories(FontAwesomeIcons.satelliteDish, "Receiver", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Receiver"),));
                  }),
                  homeCategories(FontAwesomeIcons.search, "Wanted Devices", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Wanted Devices"),));
                  }),
                  homeCategories(FontAwesomeIcons.shoppingBasket, "others", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "others"),));
                  }),
                ],
              ),
              divider(),
              ImageSlideshow(
                  autoPlayInterval: 2,
                  isLoop: true,
                  children: [
                    Image.network("https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                      fit: BoxFit.cover,),
                    Image.network("https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                      fit: BoxFit.cover,),
                    Image.network("https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                      fit: BoxFit.cover,),
                  ] ),
              divider(),
              customText(text: "Businesses", size: 20,fontweight: FontWeight.bold),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  homeCategories(FontAwesomeIcons.tablets, "Electronic Shops", (){}),
                ],
              ),
              divider(),
              //this is featured adds section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customText(text: "Featured Ads", size: 20,fontweight: FontWeight.bold),
                  textButton("See All", (){},textColor: Colors.blue),
                ],
              ),
              customText(text: "Don't miss out on today's best deals", size: 15,color: Colors.grey),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    searchBarPics(context: context,
                        height: height,
                        width: width,
                        img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                        catText: "Category",
                        desText: "Description"),
                    searchBarPics(context: context,
                        height: height,
                        width: width,
                        img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                        catText: "Category",
                        desText: "Description"),
                    searchBarPics(context: context,
                        height: height,
                        width: width,
                        img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                        catText: "Category",
                        desText: "Description"),
                  ],
                ),
              ),
              divider(),
              customText(text: " New Arrivals", size: 20,fontweight: FontWeight.bold),
              customText(text: "Check out the latest listings", size: 15,color: Colors.grey),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    searchBarPics(context: context,
                        height: height,
                        width: width,
                        img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                        catText: "Category",
                        desText: "Description"),
                    searchBarPics(context: context,
                        height: height,
                        width: width,
                        img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                        catText: "Category",
                        desText: "Description"),
                    searchBarPics(context: context,
                        height: height,
                        width: width,
                        img: "https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                        catText: "Category",
                        desText: "Description"),
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
