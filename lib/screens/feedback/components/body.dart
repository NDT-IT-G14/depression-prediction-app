// ignore_for_file: avoid_print

import 'package:comment_box/comment/comment.dart';
import 'package:depression_prediction_app/constants.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController commentController = TextEditingController();
  List filedata = [
    {
      'name': 'lahiru',
      'pic': 'assets/images/feedback.png',
      'message': 'I love to code'
    },
    {
      'name': 'kehelia',
      'pic': 'assets/images/feedback.png',
      'message': 'Very cool'
    },
    {
      'name': 'ayodya',
      'pic': 'assets/images/feedback.png',
      'message': 'Very cool'
    },
    {
      'name': 'nadil',
      'pic': 'assets/images/feedback.png',
      'message': 'not bad'
    },
  ];

  Widget commentChild(data) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: ListView(
        children: [
          for (var i = 0; i < data.length; i++)
            Padding(
              padding: const EdgeInsets.fromLTRB(2.0, 8.0, 2.0, 0.0),
              child: ListTile(
                leading: GestureDetector(
                  onTap: () async {
                    // Display the image in large form.
                    print("Comment Clicked");
                  },
                  child: Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: const BoxDecoration(
                        // image: AssetImage("assets/images/feedback.png"),
                        // color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(data[i]['pic'] + "$i")),
                  ),
                ),
                title: Text(
                  data[i]['name'],
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(data[i]['message']),
              ),
            )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: size.height * .35,
          title: Text(
            'Comment',
            style: TextStyle(
              fontSize: 40,
            ),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/images/feedback.png"),
            )),
          ),
          backgroundColor: Color(0xffff8b94),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  // bottomRight: Radius.circular(40),
                  // bottomRight: Radius.elliptical(100, 10),
                  // bottomLeft: Radius.elliptical(100, 10),
                  ))),
      body: Stack(children: [
        Container(
          height: size.height * 1.00,
          decoration: const BoxDecoration(
            color: Color(0xffffd3b6),
            // image: DecorationImage(
            //   image: AssetImage("assets/images/feedback.png"),
            //   fit: BoxFit.fitWidth,
            // ),
          ),
        ),
        CommentBox(
          userImage: const AssetImage("assets/images/feebbacklogo.png"),
          labelText: 'Write a Feedback..',
          withBorder: false,
          errorText: 'Feedback cannot be blank',
          sendButtonMethod: () {
            if (formKey.currentState!.validate()) {
              print(commentController.text);
              setState(() {
                var value = {
                  'name': 'New User',
                  'pic': 'assets/images/feedback.png',
                  'message': commentController.text
                };
                filedata.insert(0, value);
              });
              commentController.clear();
              FocusScope.of(context).unfocus();
            } else {
              print("Not validated");
            }
          },
          formKey: formKey,
          commentController: commentController,
          backgroundColor: Colors.white,
          textColor: Color.fromARGB(255, 15, 15, 15),
          sendWidget: const Icon(Icons.send_sharp,
              size: 30, color: Color.fromARGB(255, 19, 18, 18)),
          child: commentChild(filedata),
        ),
      ]),
    );
  }
}
