import 'package:get/get.dart';
import 'package:wizh_test/feature/main/view/v_main/v_main.dart';
import 'package:wizh_test/feature/main/view/v_splash_screen/v_splash_screen.dart';

class MainRoute {
  static const prefix = '/main';
  static const splashScreen = '/splash_screen';

  static List<GetPage> routes = [
    GetPage(name: splashScreen, page: () => VSplashScreen()),
    GetPage(name: prefix, page: () => VMain()),
  ];
  
  static Future? toMain() => Get.offAllNamed(prefix);
}