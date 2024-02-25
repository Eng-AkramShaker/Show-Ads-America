import 'package:flutter/material.dart';
import 'package:for_sale/sccreens/Home/tabs/Commercials.dart';
import 'package:for_sale/sccreens/Home/tabs/Home.dart';
import 'package:for_sale/sccreens/Home/tabs/Post%20an%20AdLogin.dart';
import 'package:for_sale/sccreens/Home/tabs/profile/profileTab.dart';
import 'package:for_sale/sccreens/Home/tabs/search/Search.dart';

//this is my first screen after splash screen to display the tabs from bottom nav bar
class MyHome extends StatefulWidget {
  //this is my variable for routes in main class to be easy rather than writing string
  static String routeName = 'home';
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  // this int is for taking the index u stand in bottom nav bar and this init value
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          bottomNavigationBar:
              //this is the color of bottom nav bar
              Theme(
            data: Theme.of(context).copyWith(canvasColor: Colors.white),
            child: Theme(
              data: Theme.of(context).copyWith(canvasColor: Colors.blue),
              child: BottomNavigationBar(
                //we here taking the index u stand in to display the tab from tab lists
                currentIndex: currentIndex,
                onTap: (index) {
                  currentIndex = index;
                  setState(() {});
                },
                items: const [
                  // this is items of bottom nav bar the label and img or icons
                  BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home_outlined)),
                  BottomNavigationBarItem(label: "Commercials", icon: Icon(Icons.price_change_sharp)),
                  BottomNavigationBarItem(label: "Post am Ad", icon: Icon(Icons.add_box_outlined)),
                  BottomNavigationBarItem(label: "Search", icon: Icon(Icons.search)),
                  BottomNavigationBarItem(label: "profile", icon: Icon(Icons.person_rounded)),
                ],
              ),
            ),
          ),
          // we here call the list with the index we tap in to display the tab
          body: tabs[currentIndex],
        ),
      ],
    );
  }

  //this my tabs list for bottom nav bar
  List<Widget> tabs = [const Home(), const Commercials(), const PostAnAdLogin(), const Search(), const ProfileTab()];
}
