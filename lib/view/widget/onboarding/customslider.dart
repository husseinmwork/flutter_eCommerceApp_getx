import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/controller/onboarding_controller.dart';
import 'package:flutter_ecommerce/data/datasource/static/static.dart';
import 'package:get/get.dart';

//GetView<OnBoardingControllerImp> use this just send data into controller with out setstate
class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val) {
        controller.onPageChange(val);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, i) => Column(
        children: [
          Image.asset(
            onBoardingList[i].image!,
            // width: ,
            // height: 230,
            // fit: BoxFit.fill,
          ),
          const SizedBox(height: 80),
          Text(
            onBoardingList[i].title!,
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 20),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              onBoardingList[i].body!,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
