import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:wizh_test/core/constant/const.dart';
import 'package:wizh_test/core/themes/color_theme.dart';
import 'package:wizh_test/core/themes/text_theme.dart';
import 'package:wizh_test/gen/assets.gen.dart';

class WTripDetailCommonPromo extends StatelessWidget {
  const WTripDetailCommonPromo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: TColors.blue10.withOpacity(0.2),
      padding: EdgeInsets.all(Const.parentMargin()),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Assets.images.hotel.image(width: 30, height: 30),
              Const.gap(x: 4),
              Expanded(child: Text("Klaim Benefit Khusus Log In", style: TText.bodySemiBold(), maxLines: 1, overflow: TextOverflow.ellipsis)),
              Const.gap(x: 4),
              const Icon(IconsaxPlusLinear.arrow_right_3, size: 20),
            ],
          ),
          Const.gap(x: 4),
          Container(
            padding: EdgeInsets.all(Const.parentMargin()),
            decoration: BoxDecoration(
              color: TColors.blue30.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                const Icon(IconsaxPlusBold.star, size: 20, color: TColors.blue50),
                Const.gap(x: 2),
                Expanded(
                  child: Text("Dapatkan 10% Cashback", style: TText.bodySRegular(color: TColors.blue50), maxLines: 1, overflow: TextOverflow.ellipsis),
                ),
                Const.gap(x: 2),
                Container(
                  padding: EdgeInsets.symmetric(vertical: Const.siblingMargin(), horizontal: Const.siblingMargin(x: 2)),
                  decoration: BoxDecoration(
                    color: TColors.blue50,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text("Klaim", style: TText.bodySMedium(color: TColors.baseWhite)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
