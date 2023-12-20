import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/controller/auth/login_controller.dart';
import 'package:flutter_ecommerce/core/constant/color.dart';
import 'package:flutter_ecommerce/core/functions/validinput.dart';
import 'package:flutter_ecommerce/view/widget/auth/custombuttonauth.dart';
import 'package:flutter_ecommerce/view/widget/auth/customtextbodyauth.dart';
import 'package:flutter_ecommerce/view/widget/auth/customtextformauth.dart';
import 'package:flutter_ecommerce/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter_ecommerce/view/widget/auth/logoauth.dart';
import 'package:flutter_ecommerce/view/widget/auth/textsignup.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Sign In',
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Form(
          key: controller.formState,
          child: ListView(children: [
            const LogoAuth(),
            const SizedBox(height: 20),
            CustomTextTitleAuth(text: "10".tr),
            const SizedBox(height: 10),
            CustomTextBodyAuth(text: "11".tr),
            const SizedBox(height: 15),
            CustonTextFormAuth(
              validator: (value) {
                return validInput(value!, 10, 100, "email");
              },
              mycontroller: controller.email,
              hinttext: "12".tr,
              iconData: Icons.email_outlined,
              labeltext: "18".tr,
              // mycontroller: ,
            ),
            CustonTextFormAuth(
              validator: (value) {
                return validInput(value!, 8, 30, "password");
              },
              mycontroller: controller.password,
              hinttext: "13".tr,
              iconData: Icons.lock_outline,
              labeltext: "19".tr,
              // mycontroller: ,
            ),
            InkWell(
              onTap: () {
              },
              child: Text(
                "14".tr,
                textAlign: TextAlign.right,
              ),
            ),
            CustomButtomAuth(text: "15".tr, onPressed: () {
              controller.login();
            }),
            const SizedBox(height: 40),
            CustomTextSignUpOrSignIn(
              textone: "16".tr,
              texttwo: "17".tr,
              onTap: () {
                controller.goToSignUp();
              },
            )
          ]),
        ),
      ),
    );
  }
}
