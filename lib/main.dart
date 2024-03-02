import 'package:flutter/material.dart';
import 'package:for_sale/sccreens/Home/My_Home.dart';
import 'package:for_sale/sccreens/Home/sign_up.dart';
import 'package:for_sale/sccreens/Home/tabs/Commercials.dart';
import 'package:for_sale/sccreens/Home/tabs/Post%20an%20AdLogin.dart';
import 'package:for_sale/sccreens/Home/tabs/adds%20details.dart';
import 'package:for_sale/sccreens/Home/tabs/home%20tabs/automative/Automative.dart';
import 'package:for_sale/sccreens/Home/tabs/home%20tabs/camping/camping.dart';
import 'package:for_sale/sccreens/Home/tabs/home%20tabs/contracting/contracting.dart';
import 'package:for_sale/sccreens/Home/tabs/home%20tabs/electronics/Electronics.dart';
import 'package:for_sale/sccreens/Home/tabs/home%20tabs/fratured%20adds.dart';
import 'package:for_sale/sccreens/Home/tabs/home%20tabs/property/for%20sale.dart';
import 'package:for_sale/sccreens/Home/tabs/home%20tabs/property/property.dart';
import 'package:for_sale/sccreens/Home/tabs/home%20tabs/serevices/services.dart';
import 'package:for_sale/sccreens/Home/tabs/profile/About_us.dart';
import 'package:for_sale/sccreens/Home/tabs/profile/Recently_viewed.dart';
import 'package:for_sale/sccreens/Home/tabs/profile/Terms_and_condtions.dart';
import 'package:for_sale/sccreens/splash/splash_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //remove the debug banner
      debugShowCheckedModeBanner: false,
      // routes to easy move between screens
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        MyHome.routeName: (context) => const MyHome(),
        PostAnAdLogin.routeName: (context) => const PostAnAdLogin(),
        SignUp.routeName: (context) => const SignUp(),
        RecentlyViewed.routeName: (context) => const RecentlyViewed(),
        TermsAndConditions.routeName: (context) => const TermsAndConditions(),
        AboutUs.routeName: (context) => const AboutUs(),
        Commercials.routeName: (context) => const Commercials(),
        AddsDetails.routeName: (context) => const AddsDetails(),
        Automotive.routeName: (context) => const Automotive(),
        Property.routeName: (context) => const Property(),
        ForSaleProperty.routeName: (context) => const ForSaleProperty(),
        Electronics.routeName: (context) => const Electronics(),
        Contracting.routeName: (context) => const Contracting(),
        FeaturedAds.routeName: (context) => const FeaturedAds(),
        Services.routeName: (context) => const Services(),
        Camping.routeName: (context) => const Camping(),
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}
