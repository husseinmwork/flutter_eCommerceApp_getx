import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController {
  checkemail();
  goToVerfiyCode();
}

class ForgetPasswordControllerImp extends ForgetPasswordController { 
  late TextEditingController email; 

  @override
  checkemail() {}

  @override
  goToVerfiyCode() {
    Get.offNamed(AppRoutes.verfiyCode);
  }

  @override
  void onInit() { 
    email = TextEditingController(); 
    super.onInit();
  }

  @override
  void dispose() { 
    email.dispose(); 
    super.dispose();
  }
}