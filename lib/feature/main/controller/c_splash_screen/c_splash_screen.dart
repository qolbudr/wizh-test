import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:wizh_test/feature/main/main_route.dart';

class CSplashScreen extends GetxController {
  static CSplashScreen instance = Get.find();

  @override
  void onInit() {
    super.onInit();
    initApp();
  }

  void initApp() async {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
  ]);
    await Future.delayed(const Duration(seconds: 2));
    MainRoute.toMain();
  }
}
