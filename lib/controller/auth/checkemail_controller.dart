import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class CheckEmailController extends GetxController {
  checkemail();
  goToSuccessSignUp();
}

class CheckEmailControllerImp extends CheckEmailController { 
  late TextEditingController email; 

  @override
  checkemail() {}

  @override
  goToSuccessSignUp() {
    Get.offNamed(AppRoutes.successSignUp);
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