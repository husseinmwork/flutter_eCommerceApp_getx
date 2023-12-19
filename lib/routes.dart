import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/core/constant/routes.dart';
import 'package:flutter_ecommerce/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:flutter_ecommerce/view/screen/auth/login.dart';
import 'package:flutter_ecommerce/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:flutter_ecommerce/view/screen/auth/signup.dart';
import 'package:flutter_ecommerce/view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'package:flutter_ecommerce/view/screen/auth/success_signup.dart';
import 'package:flutter_ecommerce/view/screen/auth/forgetpassword/verifiycode.dart';
import 'package:flutter_ecommerce/view/screen/onboarding.dart';

Map<String, Widget Function(BuildContext)> routes = {
  //Auth
  AppRoutes.login: (context) => const LoginScreen(),
  AppRoutes.signUp: (context) => const SignUpScreen(),
  AppRoutes.forgetPassword: (context) => const ForgetPasswordScreen(),
  AppRoutes.resetPassword: (context) => const ResetPasswordScreen(),
  AppRoutes.verfiyCode: (context) => const VerfiyCodeScreen(),
    AppRoutes.successResetpassword: (context) => const SuccessResetPasswordScreen(),
  AppRoutes.successSignUp: (context) => const SuccessSignUpScreen(),

  // OnBoarding
  AppRoutes.onBoarding: (context) => const OnBoardingScreen(),
};
