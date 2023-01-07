import 'package:depression_prediction_app/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../screens/Emergancy/emergancy_screen.dart';
import '../screens/Notification/notifi_screen.dart';
import '../screens/home/home_screen.dart';

class NavBar extends StatefulWidget {
  static const routeName = "/nav_bar";
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentPageIndex = 0;
  // final screens = [
  //   const HomeScreen(),
  //   const EmergancyScreen(),
  //   const NotificationScreen(),
  //   const ProfileScreen(),
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          NavigationDestination(
            icon: Icon(Icons.health_and_safety),
            label: "Emergancy",
          ),
          NavigationDestination(
            icon: Icon(Icons.notifications),
            label: "Notification",
          ),
          NavigationDestination(
            icon: Icon(Icons.supervised_user_circle_rounded),
            label: "My Profile",
          )
        ],
      ),
      // body: screens[currentPageIndex],
    );
  }
}
