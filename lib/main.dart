import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/core/constant/color.dart';
import 'package:flutter_ecommerce/core/localization/changeLocal.dart';
import 'package:flutter_ecommerce/core/localization/translation.dart';
import 'package:flutter_ecommerce/core/services/services.dart';
import 'package:flutter_ecommerce/routes.dart';
import 'package:flutter_ecommerce/view/screen/languages.dart';
import 'package:get/get.dart';

//arch
//1- view(widget , screen)
//2- data(model , datasource)
//3- core(class , functions , shared , constant)
//class my packages / shared ruseable widget
//constant messages and api uri

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //call services this class buld first opean app
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: MyTranslation(),
      title: 'eCommerce',
      locale: controller.language,
      theme: controller.appTheme,
      home: const LanguageScreen(),
      routes: routes,
    );
  }
}
