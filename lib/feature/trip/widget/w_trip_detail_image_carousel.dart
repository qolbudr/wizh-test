import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:wizh_test/core/constant/const.dart';
import 'package:wizh_test/core/themes/color_theme.dart';
import 'package:wizh_test/core/themes/text_theme.dart';
import 'package:wizh_test/core/utils/extension.dart';

class WTripDetailImageCarousel extends StatelessWidget {
  const WTripDetailImageCarousel({super.key, required this.tabController, required this.tabIndex});
  final int tabIndex;
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 300,
          child: TabBarView(
            controller: tabController,
            children: [
              Image.asset('assets/images/villa-2.png', width: double.infinity, height: 300, fit: BoxFit.cover),
              Image.asset('assets/images/villa-1.jpeg', width: double.infinity, height: 300, fit: BoxFit.cover),
              Image.asset('assets/images/villa-3.png', width: double.infinity, height: 300, fit: BoxFit.cover),
            ],
          ),
        ),
        Positioned(
          bottom: Const.parentMargin(x: 2),
          left: Const.parentMargin(),
          right: Const.parentMargin(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: 80),
              const Spacer(),
              ...List.generate(
                3,
                (index) => Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: index == tabIndex ? TColors.baseWhite : TColors.baseWhite.withOpacity(0.6)),
                  width: index == tabIndex ? 20 : 8,
                  height: 8,
                ),
              ).joinWidget(Const.gap()),
              const Spacer(),
              Container(
                padding: EdgeInsets.symmetric(vertical: Const.siblingMargin(), horizontal: Const.siblingMargin(x: 2)),
                decoration: BoxDecoration(
                  color: TColors.baseBlack.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    const Icon(IconsaxPlusBold.gallery, color: TColors.baseWhite, size: 16),
                    Const.gap(),
                    Text("Galeri", style: TText.bodySMedium(color: TColors.baseWhite)),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
