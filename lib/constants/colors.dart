import 'package:flutter/material.dart';

const kPrimaryColor = Color(0XFF4F80C8);
const kTextColor = Color(0XFF364861);
const kTextLightColor = Color(0XFF374457);
const kIndicatorColor = Color(0XFFCBCCD5);
const kBackgroundColor = Color(0XFFF6F8FF);

const kDefaultPadding = 20.0;
final darkTheme = ThemeData(
  primaryColorLight: Colors.grey,
  primaryColor: Colors.black,
  brightness: Brightness.dark,
  backgroundColor: const Color(0xFF212121),
  accentColor: Colors.yellow[700],
  accentIconTheme: IconThemeData(color: Colors.black),
  dividerColor: Colors.black12,
);