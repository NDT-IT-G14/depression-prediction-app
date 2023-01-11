import 'dart:io';
import 'package:depression_prediction_app/constants.dart';

import 'editable_image.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  static const routeName = "/profile";

  const Body({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Body> {
  File? _profilePicFile;

  @override
  void initState() {
    super.initState();
  }

  // A simple usage of EditableImage.
  // This method gets called when trying to change an image.
  void _directUpdateImage(File? file) async {
    if (file == null) return;

    setState(() {
      _profilePicFile = file;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 255, 246),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Add Your Profile Details',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(flex: 2),
              EditableImage(
                // Define the method that will run on the change process of the image.
                onChange: (file) => _directUpdateImage(file),

                // Define the source of the image.
                image: _profilePicFile != null
                    ? Image.file(_profilePicFile!, fit: BoxFit.cover)
                    : null,

                // Define the size of EditableImage.
                size: 150.0,

                // Define the Theme of image picker.
                imagePickerTheme: ThemeData(
                  // Define the default brightness and colors.
                  primaryColor: Colors.white,
                  shadowColor: Colors.transparent,
                  backgroundColor: const Color.fromARGB(179, 128, 255, 181),
                  iconTheme: const IconThemeData(color: Colors.black87),

                  // Define the default font family.
                  fontFamily: 'Georgia',
                ),

                // Define the border of the image if needed.
                imageBorder: Border.all(color: const Color.fromARGB(221, 1, 88, 21), width: 2.0),

                // Define the border of the icon if needed.
                editIconBorder: Border.all(color: const Color.fromARGB(221, 1, 88, 14), width: 2.0),
              ),
              const Spacer(flex: 2),
              _buildTextField(labelText: 'Full Name'),
              const Spacer(),
              _buildTextField(labelText: 'Phone Number'),
              const Spacer(),
              _buildTextField(labelText: 'Email'),
              const Spacer(),
              _buildTextField(labelText: 'Password', obscureText: true),
              const Spacer(flex: 2),
              _buildTextButton(),
            ],
          ),
        ),
      ),
    );
  }

  TextField _buildTextField({String labelText = '', bool obscureText = false}) {
    return TextField(
      cursorColor: Colors.black54,
      cursorWidth: 1.0,
      obscureText: obscureText,
      obscuringCharacter: '●',
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(
          color: Color.fromARGB(252, 0, 0, 0),
          fontSize: 18.0,
        ),
        fillColor: const Color.fromARGB(255, 147, 255, 153),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black54,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(40.0),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 19, 96, 0),
            width: 1.5,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(40.0),
          ),
        ),
      ),
    );
  }

  TextButton _buildTextButton() {
    return TextButton(
      onPressed: () => {},
      style: ButtonStyle(shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0),)),
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(vertical: 20.0,),
        ),
        side:
            MaterialStateProperty.all(const BorderSide(color: Colors.black54)),
        backgroundColor: MaterialStateProperty.all(kPrimaryColor),
        shadowColor: MaterialStateProperty.all(const Color.fromARGB(255, 128, 167, 123))
      ),
      child: const Text(
        'Save',
        style: TextStyle(
          color: Color.fromARGB(255, 255, 255, 255),
          fontSize: 25.0,
        ),
      ),
    );
  }
}