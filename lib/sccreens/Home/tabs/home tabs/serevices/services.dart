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
import '../fratured adds.dart';

class Services extends StatelessWidget {
  static String routeName="Services";
  const Services({super.key});

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
                  homeCategories(FontAwesomeIcons.satelliteDish, "Satellite", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Satellite"),));
                  }),
                  homeCategories(FontAwesomeIcons.boxesPacking, "Pack & Move", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Pack & Move"),));
                  }),
                  homeCategories(Icons.cleaning_services, "Cleaning Services", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Cleaning Services"),));
                  }),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  homeCategories(Icons.shop, "Hairdresser", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Hairdresser"),));
                  }),
                  homeCategories(Icons.people, "parties", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "parties"),));
                  }),
                  homeCategories(FontAwesomeIcons.trailer, "tailor", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "tailor"),));
                  }),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  homeCategories(FontAwesomeIcons.plane, "Travel & tourism", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Travel & tourism"),));
                  }),
                  homeCategories(Icons.medical_services_rounded, "Medical Services", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Medical Services"),));
                  }),
                  homeCategories(Icons.support_agent_rounded, "Clearing Agent", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Clearing Agent"),));
                  }),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  homeCategories(Icons.indeterminate_check_box, "Property Services", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Property Services"),));
                  }),
                  homeCategories(FontAwesomeIcons.water, "laundry", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "laundry"),));
                  }),
                  homeCategories(FontAwesomeIcons.bowlFood, "food & Catering", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "food & Catering"),));
                  }),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  homeCategories(Icons.recommend_rounded, "Commercial Licenses", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Commercial Licenses"),));
                  }),
                  homeCategories(FontAwesomeIcons.ad, "Advertisement Services", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Advertisement Services"),));
                  }),
                  homeCategories(FontAwesomeIcons.car, "Transportations", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "Transportations"),));
                  }),
                ],
              ),
              const SizedBox(height: 10,),
              homeCategories(FontAwesomeIcons.shoppingBasket, "other Services", (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const AutomotiveCat(hintText: "other Services"),));
              }),
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
