
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/core/constant/color.dart';
import 'package:flutter_ecommerce/view/widget/auth/custombuttonauth.dart';
import 'package:flutter_ecommerce/view/widget/auth/customtextbodyauth.dart';
import 'package:flutter_ecommerce/view/widget/auth/customtexttitleauth.dart'; 

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ResetPasswordControllerImp controller =
    //     Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Forget Password',
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const SizedBox(height: 20),
          const CustomTextTitleAuth(text: "Check Email"),
          const SizedBox(height: 10),
          const CustomTextBodyAuth(
              text:
                  "Sign Up With Your Email And Password OR Continue With Social Media"),
          const SizedBox(height: 15),
          // CustonTextFormAuth(
          //   mycontroller: controller.email,
          //   hinttext: "Enter Your Email",
          //   iconData: Icons.email_outlined,
          //   labeltext: "Email",
          //   // mycontroller: ,
          // ),
          CustomButtomAuth(text: "Check", onPressed: () {}),
          const SizedBox(height: 40),
        ]),
      ),
    );
  }
}