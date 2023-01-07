import 'package:depression_prediction_app/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../screens/Emergancy/emergancy_screen.dart';
import '../screens/Notification/notifi_screen.dart';
import '../screens/home/home_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentIndex = 0;
  final screens = [
    const HomeScreen(),
    const EmergancyScreen(),
    const NotificationScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: kGrayColor,
          selectedItemColor: kPrimaryColor,
          iconSize: 30,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.health_and_safety),
              label: "Emergancy",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: "Notification",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle_rounded),
              label: "My Profile",
            )
          ]),
    );
  }
}
