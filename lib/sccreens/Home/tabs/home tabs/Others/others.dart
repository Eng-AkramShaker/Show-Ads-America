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

class Others extends StatelessWidget{
  static String routeName="Others";
  const Others({super.key});

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
                  homeCategories(FontAwesomeIcons.prayingHands, "Ramadan", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Ramadan"),));
                  }),
                  homeCategories(FontAwesomeIcons.moneyCheck, "Currencies", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Currencies"),));
                  }),
                  homeCategories(FontAwesomeIcons.gitter, "Audio & Musical", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Audio & Musical"),));
                  }),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  homeCategories(FontAwesomeIcons.school, "School Supplies", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "School Supplies"),));
                  }),
                  homeCategories(FontAwesomeIcons.book, "Books", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Books"),));
                  }),
                  homeCategories(FontAwesomeIcons.bagShopping, "wholesale", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "wholesale"),));
                  }),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  homeCategories(FontAwesomeIcons.stickerMule, "Stickers", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Stickers"),));
                  }),
                  homeCategories(FontAwesomeIcons.magnifyingGlass, "Lost & Found", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Lost & Found"),));
                  }),
                  homeCategories(Icons.other_houses_outlined, "other", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Baby Clothes"),));
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