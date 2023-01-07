import 'package:depression_prediction_app/constants.dart';
import 'package:depression_prediction_app/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({super.key});

  @override
  State<MyHeaderDrawer> createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: kPrimaryLightColor,
          width: double.infinity,
          height: 200,
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                height: 70,
                // ignore: prefer_const_constructors
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: const DecorationImage(
                    image: AssetImage('assets/images/profile.jpg'),
                  ),
                ),
              ),
              const Text(
                "Lahiru Munasinghe",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              const Text(
                "lahiru.sl24@gmail.com",
                style: TextStyle(color: Colors.black45, fontSize: 14),
              )
            ],
          ),
        ),
        ListTile(
          leading: const Icon(Icons.person),
          title: const Text(
            'Profile',
            style: TextStyle(fontSize: 18),
          ),
          onTap: () {
            Navigator.of(context).pushNamed(ProfileScreen.routeName);
          },
        ),
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text(
            'Settings',
            style: TextStyle(fontSize: 18),
          ),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.arrow_back),
          title: const Text(
            'Logout',
            style: TextStyle(fontSize: 18),
          ),
          onTap: () {},
        )
      ],
    );
  }
}
