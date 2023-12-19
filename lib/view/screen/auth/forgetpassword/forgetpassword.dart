import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/controller/auth/forgetpassword_controller.dart';
import 'package:flutter_ecommerce/core/constant/color.dart';
import 'package:flutter_ecommerce/view/widget/auth/custombuttonauth.dart';
import 'package:flutter_ecommerce/view/widget/auth/customtextbodyauth.dart';
import 'package:flutter_ecommerce/view/widget/auth/customtextformauth.dart';
import 'package:flutter_ecommerce/view/widget/auth/customtexttitleauth.dart';
import 'package:get/get.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller =
        Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('14'.tr,
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const SizedBox(height: 20),
            CustomTextTitleAuth(text: "27".tr),
          const SizedBox(height: 10),
            CustomTextBodyAuth(
            // please Enter Your Email Address To Recive A verification code
              text:
                  "29".tr),
          const SizedBox(height: 15),
          CustonTextFormAuth(
            mycontroller: controller.email,
            hinttext: "12".tr,
            iconData: Icons.email_outlined,
            labeltext: "18".tr,
            // mycontroller: ,
          ),
          CustomButtomAuth(text: "30".tr, onPressed: () {
            controller.goToVerfiyCode() ; 
          }),
          const SizedBox(height: 40),
        ]),
      ),
    );
  }
}