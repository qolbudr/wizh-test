import 'package:flutter/material.dart';
import 'package:wizh_test/core/constant/const.dart';
import 'package:wizh_test/core/themes/color_theme.dart';
import 'package:wizh_test/core/themes/text_theme.dart';
import 'package:wizh_test/core/utils/extension.dart';
import 'package:wizh_test/core/widget/w_button.dart';
import 'package:wizh_test/feature/trip/widget/w_trip_detail_review_card.dart';

class WTripDetailReview extends StatelessWidget {
  const WTripDetailReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Const.parentMargin()),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Review", style: TText.bodyMBold()),
              WButton(type: WButtonType.textPrimary, label: "Lihat Semua", onTap: () {}, size: WButtonSize.small),
            ],
          ),
          Const.gap(x: 2),
          Row(
            children: [
              RichText(
                text: TextSpan(
                  text: "4.5",
                  style: TText.headingBold(color: TColors.baseBlack),
                  children: [
                    TextSpan(
                      text: "/5",
                      style: TText.bodyMBold(color: TColors.neutral60),
                    ),
                  ],
                ),
              ),
              Const.gap(x: 4),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Bagus", style: TText.bodySSemiBold()),
                  Text("Dari 942 review", style: TText.bodyXSRegular(color: TColors.neutral60)),
                ],
              )
            ],
          ),
          Const.gap(x: 4),
          IntrinsicHeight(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...[0, 1, 2].map((item) => const WTripDetailReviewCard()).toList().joinWidget(Const.gap(x: 4)),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
