import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:for_sale/controller/home_controller.dart';
import 'package:for_sale/sccreens/Home/My_Home.dart';
import 'package:for_sale/sccreens/Home/sign_up.dart';
import 'package:for_sale/sccreens/Home/tabs/Commercials.dart';
import 'package:for_sale/sccreens/Home/tabs/Post%20an%20AdLogin.dart';
import 'package:for_sale/sccreens/Home/tabs/profile/About_us.dart';
import 'package:for_sale/sccreens/Home/tabs/profile/Recently_viewed.dart';
import 'package:for_sale/sccreens/Home/tabs/profile/Terms_and_condtions.dart';
import 'package:for_sale/sccreens/auth/login.dart';
import 'package:for_sale/sccreens/auth/register.dart';
import 'package:for_sale/sccreens/auth/success.dart';
import 'package:for_sale/services/firebase_options.dart';
import 'package:provider/provider.dart';

import 'sccreens/splash/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MultiProvider(providers: _providers, child: const MyApp()));
}

final dynamic _providers = [
  //
  ChangeNotifierProvider(create: (ctx) => HomeController()),
];

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
        Login.routeName: (context) => const Login(),
        Register.routeName: (context) => const Register(),
        SuccessScreen.routeName: (context) => const SuccessScreen(),
        MyHome.routeName: (context) => const MyHome(),
        PostAnAdLogin.routeName: (context) => const PostAnAdLogin(),
        SignUp.routeName: (context) => const SignUp(),
        RecentlyViewed.routeName: (context) => const RecentlyViewed(),
        TermsAndConditions.routeName: (context) => const TermsAndConditions(),
        AboutUs.routeName: (context) => const AboutUs(),
        Commercials.routeName: (context) => const Commercials(),
      },
      initialRoute: MyHome.routeName,
    );
  }
}
