import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:wizh_test/core/constant/const.dart';
import 'package:wizh_test/core/themes/color_theme.dart';
import 'package:wizh_test/core/themes/text_theme.dart';

class WTripDetailHeader extends StatelessWidget {
  const WTripDetailHeader({super.key, required this.opacity});
  final double opacity;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: EdgeInsets.all(Const.parentMargin()),
        color: TColors.baseWhite.withOpacity(opacity),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () => Get.back(),
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: TColors.baseWhite),
                  width: 35,
                  height: 35,
                  child: const Center(child: Icon(IconsaxPlusLinear.arrow_left_1)),
                ),
              ),
              if (opacity == 1) ...[
                Text("Villa Asri Makmur Sekali", style: TText.bodyMBold()),
              ],
              GestureDetector(
                onTap: () => Get.back(),
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: TColors.baseWhite),
                  width: 35,
                  height: 35,
                  child: const Center(child: Icon(IconsaxPlusLinear.heart)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
