import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/controller/auth/login_controller.dart';
import 'package:flutter_ecommerce/core/constant/color.dart';
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
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
        child: ListView(children: [
          const SizedBox(height: 15),
          const LogoAuth(),
          const CustomTextTitleAuth(text: "Welcome Back"),
          const SizedBox(height: 10),
          const CustomTextBodyAuth(
              text:
                  "Sign In With Your Email And Password OR Continue With Social Media"),
          const SizedBox(height: 65),
          CustonTextFormAuth(
            mycontroller: controller.email,
            hinttext: "Enter Your Email",
            iconData: Icons.email_outlined,
            labeltext: "Email",
            // mycontroller: ,
          ),
          CustonTextFormAuth(
            mycontroller: controller.password,
            hinttext: "Enter Your Password",
            iconData: Icons.lock_outline,
            labeltext: "Password",
            // mycontroller: ,
          ),
          InkWell(
            onTap: (){
              controller.goToForgetPassword();
            },
            child: const Text(
              "Forget Password",
              textAlign: TextAlign.end,
            ),
          ),
          CustomButtomAuth(text: "Sign In", onPressed: () {}),
          const SizedBox(height: 30),
          CustomTextSignUpOrSignIn(
            textone: "Don't have an account ? ",
            texttwo: "SignUp",
            onTap: () {
              controller.goToSignUp();
            },
          )
        ]),
      ),
    );
  }
}
