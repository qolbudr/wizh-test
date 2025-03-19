import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wizh_test/core/constant/const.dart';
import 'package:wizh_test/core/themes/color_theme.dart';
import 'package:wizh_test/core/themes/text_theme.dart';
import 'package:wizh_test/feature/main/controller/c_splash_screen/c_splash_screen.dart';

class VSplashScreenMobile extends StatelessWidget {
  const VSplashScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CSplashScreen());

    return Scaffold(
        backgroundColor: TColors.primaryColor,
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Image.asset('assets/logo.png'),
              Const.gap(x: 2),
              const SizedBox(
                width: 80,
                child: LinearProgressIndicator(),
              ),
              const Spacer(),
              Text("Wizh Trip", style: TText.subHeadingSemiBold(color: TColors.baseWhite)),
              Const.gap(x: 16),
            ],
          ),
        ));
  }
}
