import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/controller/auth/signup_controller.dart';
import 'package:flutter_ecommerce/core/constant/color.dart';
import 'package:flutter_ecommerce/view/widget/auth/custombuttonauth.dart';
import 'package:flutter_ecommerce/view/widget/auth/customtextbodyauth.dart';
import 'package:flutter_ecommerce/view/widget/auth/customtextformauth.dart';
import 'package:flutter_ecommerce/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter_ecommerce/view/widget/auth/textsignup.dart';

import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Sign Up',
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const SizedBox(height: 20),
          const CustomTextTitleAuth(text: "Welcome Back"),
          const SizedBox(height: 10),
          const CustomTextBodyAuth(
              text:
                  "Sign Up With Your Email And Password OR Continue With Social Media"),
          const SizedBox(height: 15),
          CustonTextFormAuth(
            mycontroller: controller.username,
            hinttext: "Enter Your Username",
            iconData: Icons.person_outline,
            labeltext: "Username",
          ),
          CustonTextFormAuth(
            mycontroller: controller.email,
            hinttext: "Enter Your Email",
            iconData: Icons.email_outlined,
            labeltext: "Email",
          ),
          CustonTextFormAuth(
            mycontroller: controller.phone,
            hinttext: "Enter Your Phone",
            iconData: Icons.phone_android_outlined,
            labeltext: "Phone",
          ),
          CustonTextFormAuth(
            mycontroller: controller.password,
            hinttext: "Enter Your Password",
            iconData: Icons.lock_outline,
            labeltext: "Password",
          ),
          const Text(
            "Forget Password",
            textAlign: TextAlign.end,
          ),
          CustomButtomAuth(text: "Sign Up", onPressed: () {}),
          const SizedBox(height: 40),
          CustomTextSignUpOrSignIn(
            textone: " have an account ? ",
            texttwo: " SignIn ",
            onTap: () {
              controller.goToLogin();
            },
          ),
        ]),
      ),
    );
  }
}