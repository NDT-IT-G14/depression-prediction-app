import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  static const routeName = "/profile";

  const Body({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          //for circle avtar image
          _getHeader(),
          const SizedBox(
            height: 10,
          ),
          _profileName("Ayodya Nirmani"),
          const SizedBox(
            height: 14,
          ),
          _heading("Personal Details"),
          const SizedBox(
            height: 6,
          ),
          _detailsCard(),
          const SizedBox(
            height: 10,
          ),
          _heading("Settings"),
          const SizedBox(
            height: 6,
          ),
          _settingsCard(),
          const Spacer(),
          updateButton()
        ],
      )),
    );
  }

  Widget _getHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
                //borderRadius: BorderRadius.all(Radius.circular(10.0)),
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://media-exp1.licdn.com/dms/image/C4E03AQGxCeyESadtLQ/profile-displayphoto-shrink_800_800/0/1621147423282?e=2147483647&v=beta&t=KSNL9i22RyDTDjHDhbPRcwLuHbTLduhNkcEvWJqp3Yo"))
                // color: Colors.orange[100],
                ),
          ),
        ),
      ],
    );
  }

  Widget _profileName(String name) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.80, //80% of width,
      child: Center(
        child: Text(
          name,
          style: const TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.w800),
        ),
      ),
    );
  }

  Widget _heading(String heading) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.80, //80% of width,
      child: Text(
        heading,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }

  Widget _detailsCard() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4,
        child: Column(
          children: const [
            //row for each deatails
            ListTile(
              leading: Icon(Icons.email),
              title: Text("ayodya@gmail.com"),
            ),
            Divider(
              height: 0.6,
              color: Colors.black87,
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text("0723456547"),
            ),
            Divider(
              height: 0.6,
              color: Colors.black87,
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text("Kurunagala"),
            )
          ],
        ),
      ),
    );
  }

  Widget _settingsCard() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4,
        child: Column(
          children: const [
            //row for each deatails
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
            Divider(
              height: 0.6,
              color: Colors.black87,
            ),
            ListTile(
              leading: Icon(Icons.dashboard_customize),
              title: Text("About Us"),
            ),
            Divider(
              height: 0.6,
              color: Colors.black87,
            ),
            ListTile(
              leading: Icon(Icons.topic),
              title: Text("Change Theme"),
            )
          ],
        ),
      ),
    );
  }

  Widget updateButton() {
    return Row(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
              color: const Color.fromARGB(255, 48, 138, 102),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.logout,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Update Profile",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )
                  ],
                ),
              )),
        ),
      ],
    );
  }
}
