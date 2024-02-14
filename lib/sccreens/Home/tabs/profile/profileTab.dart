import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:for_sale/widgets/coustm%20texts.dart';

import '../../../../widgets/divider.dart';
import '../../../../widgets/profile tabs.dart';
import '../../../../widgets/social maedia icons.dart';
import '../../sign_up.dart';
import '../Post an AdLogin.dart';
import 'About_us.dart';
import 'Recently_viewed.dart';
import 'Terms_and_condtions.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    double? width = MediaQuery.sizeOf(context).width;
    double? height = MediaQuery.sizeOf(context).height;
    String? language = 'English';
    String? translate = 'original';
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                //this row for notification icon
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.notifications_none_outlined,
                      size: height * width * 0.00007,
                    ),
                  ],
                ),
                //this row for profile icon and profile text
                Row(
                  children: [
                    //this for profile img
                    Icon(
                      Icons.person_2_rounded,
                      size: width * height * 0.0001,
                    ),
                    SizedBox(
                      width: width * 0.1,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Profile",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          '''Log in or sign up to buy and sell 
          anything''',
                          style: TextStyle(fontWeight: FontWeight.w200, fontSize: 20),
                        ),
                      ],
                    )
                  ],
                ),

                SizedBox(
                  height: height * 0.015,
                ),
                //this sized box for sign in button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, PostAnAdLogin.routeName);
                    },
                    child: const Text('Log in'),
                  ),
                ),

                SizedBox(
                  height: height * 0.015,
                ),

                // this row for sing up text button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Dont have an account?'),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, SignUp.routeName);
                        },
                        child: const Text('Sign up'))
                  ],
                ),
                const Divider(),
                profileTabs(width, Icons.remove_red_eye_outlined, "Recently viewed", () {
                  Navigator.pushNamed(context, RecentlyViewed.routeName);
                }),
                const Divider(),
                profileTabs(width, Icons.favorite_border_outlined, "My favorites", () {
                  Navigator.pushNamed(context, PostAnAdLogin.routeName);
                }),
                const Divider(),
                profileTabs(width, Icons.bookmark_border, "wanted items", () {}),
                const Divider(),
                profileTabs(width, Icons.language_outlined, "Language", () {
                  //our language bottom sheet

                  showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
                    ),
                    backgroundColor: Colors.white,
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: 250.0,
                        color: Colors.transparent,
                        child: Container(
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  "Choose your Language",
                                  style: TextStyle(fontSize: 25),
                                ),

                                //the english radio button
                                ListTile(
                                  title: const Text('English'),
                                  leading: Radio<String>(
                                    value: 'English',
                                    groupValue: language,
                                    activeColor: Colors.blue, // Change the active radio button color here
                                    fillColor: MaterialStateProperty.all(Colors.blue), // Change the fill color when selected
                                    splashRadius: 25, // Change the splash radius when clicked
                                    onChanged: (value) {
                                      setState(() {
                                        language = value;
                                      });
                                    },
                                  ),
                                ),
                                ListTile(
                                  title: const Text('Arabic'),
                                  leading: Radio<String>(
                                    value: "Arabic",
                                    groupValue: language,
                                    activeColor: Colors.blue, // Change the active radio button color here
                                    fillColor: MaterialStateProperty.all(Colors.blue), // Change the fill color when selected
                                    splashRadius: 25, // Change the splash radius when clicked
                                    onChanged: (value) {
                                      setState(() {
                                        language = value;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            )),
                      );
                    },
                  );
                }),
                const Divider(),
                profileTabs(width, Icons.translate_outlined, "Translation", () {
                  showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
                    ),
                    backgroundColor: Colors.white,
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: 250.0,
                        color: Colors.transparent,
                        child: Container(
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                customText(text: "Choose your Language", size: 25),
                                ListTile(
                                  title: const Text('Original'),
                                  leading: Radio<String>(
                                    value: 'Original',
                                    groupValue: translate,
                                    activeColor: Colors.blue, // Change the active radio button color here
                                    fillColor: MaterialStateProperty.all(Colors.blue), // Change the fill color when selected
                                    splashRadius: 25, // Change the splash radius when clicked
                                    onChanged: (value) {
                                      setState(() {
                                        translate = value;
                                      });
                                    },
                                  ),
                                ),
                                //the english radio button
                                ListTile(
                                  title: const Text('English'),
                                  leading: Radio<String>(
                                    value: 'English',
                                    groupValue: translate,
                                    activeColor: Colors.blue, // Change the active radio button color here
                                    fillColor: MaterialStateProperty.all(Colors.blue), // Change the fill color when selected
                                    splashRadius: 25, // Change the splash radius when clicked
                                    onChanged: (value) {
                                      setState(() {
                                        translate = value;
                                      });
                                    },
                                  ),
                                ),
                                ListTile(
                                  title: const Text('Arabic'),
                                  leading: Radio<String>(
                                    value: "Arabic",
                                    groupValue: language,
                                    activeColor: Colors.blue, // Change the active radio button color here
                                    fillColor: MaterialStateProperty.all(Colors.blue), // Change the fill color when selected
                                    splashRadius: 25, // Change the splash radius when clicked
                                    onChanged: (value) {
                                      setState(() {
                                        translate = value;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            )),
                      );
                    },
                  );
                }),
                divider(),
                profileTabs(width, Icons.person_pin, "Agents", () {}),
                divider(),
                profileTabs(width, Icons.support_agent_rounded, "Support", () {}),
                divider(),
                profileTabs(width, Icons.security_rounded, "Terms and Conditions", () {
                  Navigator.pushNamed(context, TermsAndConditions.routeName);
                }),
                divider(),
                profileTabs(width, Icons.info_outline, " About us", () {
                  Navigator.pushNamed(context, AboutUs.routeName);
                }),
                divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    socialMedia(FontAwesomeIcons.facebook, () {}),
                    socialMedia(FontAwesomeIcons.twitter, () {}),
                    socialMedia(FontAwesomeIcons.instagram, () {}),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  //this is an inkwell function that makes the tabs of profile like recently viewed

  // this function for social media links
}
