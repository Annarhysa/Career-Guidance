// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  TextBox({required this.hinttext, required this.icon});

  final String? hinttext;
  final Widget? icon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      textAlign: TextAlign.center, // Center the text horizontally.
      style: TextStyle(fontSize: 16.0), // Adjust the font size.
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors
            .transparent, // Set the background color of the TextField to transparent.
        hintText: hinttext,
        border: InputBorder.none, // Remove the border.
        prefixIcon: icon, // Set the icon color.
      ),
    );
  }
}
// Icon(
//           Icons.person,
//           size: 40.0,
//           color: Colors.grey, 