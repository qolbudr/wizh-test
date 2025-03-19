import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wizh_test/core/constant/const.dart';
import 'package:wizh_test/core/routes/bindings.dart';
import 'package:wizh_test/core/routes/routes.dart';
import 'package:wizh_test/core/themes/theme.dart';
import 'package:wizh_test/feature/main/main_route.dart';

class WizhTest extends StatelessWidget {
  const WizhTest({super.key});

  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: navigatorKey,
      title: Const.appTitle,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      defaultTransition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 100),
      theme: ThemeMain().getDefaultTheme(context),
      initialRoute: MainRoute.splashScreen,
      getPages: BaseRoute.route,
      initialBinding: MainBinding(),
    );
  }
}