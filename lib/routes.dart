
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/core/constant/routes.dart';
import 'package:flutter_ecommerce/view/screen/auth/login.dart';
import 'package:flutter_ecommerce/view/screen/auth/signup.dart';
import 'package:flutter_ecommerce/view/screen/onboarding.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.login :(context) =>const LoginScreen(),
  AppRoutes.onBoarding :(context) =>const OnBoardingScreen(),
  AppRoutes.signUp :(context) =>const SignUpScreen(),
};