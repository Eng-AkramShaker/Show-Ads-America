import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:for_sale/sccreens/Home/tabs/home%20tabs/automative/Automotive%20Cat.dart';
import 'package:for_sale/widgets/Home%20categories.dart';
import 'package:for_sale/widgets/Search%20bar%20pics.dart';
import 'package:for_sale/widgets/buttons/Text_button.dart';
import 'package:for_sale/widgets/coustm%20texts.dart';
import 'package:for_sale/widgets/divider.dart';
import 'package:for_sale/widgets/search_bar.dart';

class Automotive extends StatelessWidget{
  static String routeName="Automotive";
  const Automotive({super.key});

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
              searchBar(hintText: "Automotive"),
              divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  homeCategories(FontAwesomeIcons.car, "Cars", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Cars"),));
                  }),
                  homeCategories(FontAwesomeIcons.carSide, "Classic Cars", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Classic Cars"),));
                  }),
                  homeCategories(FontAwesomeIcons.carSide, "Junk Cars", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Junk Cars"),));
                  }),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  homeCategories(Icons.search, "Wanted Cars", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Wanted Cars"),));
                  }),
                  homeCategories(FontAwesomeIcons.motorcycle, "Bikes", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Bikes"),));
                  }),
                  homeCategories(FontAwesomeIcons.water, "Water Craft", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Water Craft"),));
                  }),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  homeCategories(FontAwesomeIcons.truck, "CMVs", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "CMVs"),));
                  }),
                  homeCategories(FontAwesomeIcons.gears, "Spare Parts", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Spare Parts"),));
                  }),
                  homeCategories(Icons.tire_repair, "Automotive Accessories", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Automotive Accessories"),));
                  }),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  homeCategories(Icons.propane_tank, "Automotive Services", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Automotive Services"),));
                  }),
                  homeCategories(FontAwesomeIcons.key, "Rentals", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Rentals"),));
                  }),
                  homeCategories(FontAwesomeIcons.truckFast, "Food Trucks", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Food Trucks"),));
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
                  homeCategories(FontAwesomeIcons.car, "Dealerships", (){}),
                  homeCategories(FontAwesomeIcons.carSide, "Car Offices", (){}),
                  homeCategories(FontAwesomeIcons.carSide, "Car Rental", (){}),
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
