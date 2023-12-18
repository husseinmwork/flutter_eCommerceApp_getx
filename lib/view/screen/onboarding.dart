import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/controller/onboarding_controller.dart';
import 'package:flutter_ecommerce/core/constant/color.dart';
import 'package:flutter_ecommerce/view/widget/onboarding/custombutton.dart';
import 'package:flutter_ecommerce/view/widget/onboarding/customslider.dart';
import 'package:flutter_ecommerce/view/widget/onboarding/dotcontroller.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        //inject to OnBoardingControllerImp
    //this work init for controllar and allow use controller any widget
    //and call any methode in controller+
    Get.put(OnBoardingControllerImp()) ;
    return const Scaffold(
        backgroundColor: AppColor.backgroundcolor,
        body: SafeArea(
          child: Column(children: [
             Expanded(
              flex: 4,
              child: CustomSliderOnBoarding(),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children:  [
                    CustomDotControllerOnBoarding(),
                    Spacer(flex: 2),
                    CustomButtonOnBoarding()
                  ],
                ))
          ]),
        ));
  }
}
