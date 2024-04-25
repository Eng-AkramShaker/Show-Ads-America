import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:for_sale/sccreens/Home/tabs/home%20tabs/automative/Automotive%20Cat.dart';
import 'package:for_sale/sccreens/Home/tabs/home%20tabs/fratured%20adds.dart';
import 'package:for_sale/widgets/Home%20categories.dart';
import 'package:for_sale/widgets/Search%20bar%20pics.dart';
import 'package:for_sale/widgets/buttons/Text_button.dart';
import 'package:for_sale/widgets/coustm%20texts.dart';
import 'package:for_sale/widgets/divider.dart';
import 'package:for_sale/widgets/search_bar.dart';

class Family extends StatelessWidget{
  static String routeName="Family";
  const Family({super.key});

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
                  homeCategories(FontAwesomeIcons.dumbbell, "Gym & Spa", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Gym & Spa"),));
                  }),
                  homeCategories(FontAwesomeIcons.shirt, "Men Clothes", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Men Clothes"),));
                  }),
                  homeCategories(FontAwesomeIcons.bagShopping, "Men Shoes", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Men Shoes"),));
                  }),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  homeCategories(FontAwesomeIcons.teeth, "Men care Products", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Men care Products"),));
                  }),
                  homeCategories(FontAwesomeIcons.personDress, "ladies Clothes", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "ladies Clothes"),));
                  }),
                  homeCategories(FontAwesomeIcons.shirt, "Women bags", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Women bags & Shoes"),));
                  }),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  homeCategories(FontAwesomeIcons.brush, "Women Makeup", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Women Makeup"),));
                  }),
                  homeCategories(FontAwesomeIcons.glasses, "Women Accessories", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Women Accessories"),));
                  }),
                  homeCategories(FontAwesomeIcons.baby, "Baby Clothes", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Baby Clothes"),));
                  }),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  homeCategories(FontAwesomeIcons.gamepad, "Children Toys", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Children Toys"),));
                  }),
                  homeCategories(FontAwesomeIcons.babyCarriage, "Baby Products", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Baby Products"),));
                  }),
                  homeCategories(FontAwesomeIcons.shoppingBag, "Family Supplies", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Family Supplies"),));
                  }),
                ],
              ),
              divider(),
              ImageSlideshow(
                  children: [
                    Image.network("https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                      fit: BoxFit.cover,),
                    Image.network("https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                      fit: BoxFit.cover,),
                    Image.network("https://hips.hearstapps.com/hmg-prod/images/kitchen-remodel-ideas-hbx120121kristinfine-008-1651168839.jpg",
                      fit: BoxFit.cover,),
                  ] ),
              divider(),
              //this is featured adds section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customText(text: "Featured Ads", size: 20,fontweight: FontWeight.bold),
                  textButton("See All", (){
                    Navigator.pushNamed(context, FeaturedAds.routeName);
                  },textColor: Colors.blue),
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