import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/core/constant/color.dart';

ThemeData themeEnglish = ThemeData(
  fontFamily: "PlayfairDisplay",
  textTheme: const TextTheme(
    //headline1 this deprecated
    //big title
    displayLarge: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 26, color: AppColor.black),
    //h2 normal title appbar title
    displayMedium: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 20, color: AppColor.black),
    //bodyText1 this deprecated

    bodyMedium: TextStyle(
        height: 2,
        color: AppColor.grey,
        fontWeight: FontWeight.bold,
        fontSize: 14),
    bodySmall: TextStyle(height: 2, color: AppColor.grey, fontSize: 14),
  ),
  primarySwatch: Colors.blue,
);

ThemeData themeArabic = ThemeData(
  fontFamily: "Cairo",
  textTheme: const TextTheme(
    //headline1 this deprecated
    //big title
    displayLarge: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 26, color: AppColor.black),
    //h2 normal title appbar title
    displayMedium: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 20, color: AppColor.black),
    //bodyText1 this deprecated

    bodyMedium: TextStyle(
        height: 2,
        color: AppColor.grey,
        fontWeight: FontWeight.bold,
        fontSize: 14),
    bodySmall: TextStyle(height: 2, color: AppColor.grey, fontSize: 14),
  ),
  primarySwatch: Colors.blue,
);
