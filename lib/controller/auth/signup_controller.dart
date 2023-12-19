import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  signUp();
  goToLogin();
}

class SignUpControllerImp extends SignUpController {
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;

  @override
  goToLogin() {
    Get.offNamed(AppRoutes.login);
  }

  @override
  signUp() {
        Get.offNamed(AppRoutes.checkEmail);

  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    username = TextEditingController();
    phone = TextEditingController();
    super.onInit();
  }

  //this not neccessery becouse getx by defult work dispose after go out any screen
  @override
  void dispose() {
    email.dispose();
    password.dispose();
    username.dispose();
    phone.dispose();
    super.dispose();
  }
}
