import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:wizh_test/core/constant/const.dart';
import 'package:wizh_test/core/themes/color_theme.dart';
import 'package:wizh_test/core/themes/text_theme.dart';

class WTripDetailGeneralInformation extends StatelessWidget {
  const WTripDetailGeneralInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Const.parentMargin()),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Villa Asri Makmur Sekali", style: TText.bodyBold()),
          Const.gap(x: 2),
          Row(
            children: [
              const Icon(IconsaxPlusLinear.message_tick, color: TColors.primaryColor, size: 40),
              Const.gap(x: 4),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(text: "4.5", style: TText.bodyBold(color: TColors.neutral60)),
                          TextSpan(text: "/5 (942 Review)", style: TText.bodyXSRegular(color: TColors.neutral60)),
                        ],
                      ),
                    ),
                    Const.gap(),
                    Text("493RB+ Terjual", style: TText.bodyXXSRegular()),
                  ],
                ),
              )
            ],
          ),
          Const.gap(x: 4),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(IconsaxPlusBold.location, size: 20, color: TColors.neutral60),
              Const.gap(x: 2),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Jl. Raya Puncak, Cisarua, Bogor", style: TText.bodyXSRegular(color: TColors.neutral60), maxLines: 1, overflow: TextOverflow.ellipsis),
                    Text("Indonesia", style: TText.bodyXSRegular(color: TColors.neutral60)),
                  ],
                ),
              ),
              Const.gap(x: 2),
              const Icon(IconsaxPlusLinear.arrow_right_3, size: 20),
            ],
          ),
          Const.gap(x: 4),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(IconsaxPlusBold.clock, size: 20, color: TColors.neutral60),
              Const.gap(x: 2),
              Expanded(
                child: Text("Buka · Rabu · 09:00 - 17:00", style: TText.bodyXSRegular(color: TColors.neutral60), maxLines: 1, overflow: TextOverflow.ellipsis),
              ),
              Const.gap(x: 2),
              const Icon(IconsaxPlusLinear.arrow_right_3, size: 20),
            ],
          ),
        ],
      ),
    );
  }
}
