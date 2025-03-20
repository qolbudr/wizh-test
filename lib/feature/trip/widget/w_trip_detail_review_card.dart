import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wizh_test/core/constant/const.dart';
import 'package:wizh_test/core/themes/color_theme.dart';
import 'package:wizh_test/core/themes/text_theme.dart';
import 'package:wizh_test/gen/assets.gen.dart';

class WTripDetailReviewCard extends StatelessWidget {
  const WTripDetailReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.87,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        color: TColors.baseWhite,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.02),
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ]
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Assets.images.banner1.image(width: 100, fit: BoxFit.cover),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(Const.parentMargin()),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            text: "4.5",
                            style: TText.bodyMBold(color: TColors.baseBlack),
                            children: [
                              TextSpan(
                                text: "/5",
                                style: TText.bodyXSSemiBold(color: TColors.neutral60),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: Const.siblingMargin(x: 10)),
                        Text("Dari 942 review", style: TText.bodySRegular(color: TColors.neutral60))
                      ],
                    ),
                    Const.gap(x: 2),
                    RichText(
                      text: TextSpan(text: "Elvi Pasaribu", style: TText.bodyXSSemiBold(color: TColors.baseBlack), children: [
                        TextSpan(
                          text: " - Keluarga",
                          style: TText.bodyXSRegular(color: TColors.neutral60),
                        ),
                      ]),
                    ),
                    Const.gap(x: 3.5),
                    Text(
                      "Villa nya bagus, pemandangan nya indah, fasilitas nya lengkap, harga nya terjangkau. Sangat cocok untuk keluarga.",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TText.bodySRegular(color: TColors.neutral60),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
