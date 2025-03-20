import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:wizh_test/core/constant/const.dart';
import 'package:wizh_test/core/themes/color_theme.dart';
import 'package:wizh_test/core/themes/text_theme.dart';
import 'package:wizh_test/core/utils/extension.dart';
import 'package:wizh_test/core/widget/w_button.dart';

class WTripDetailPackage extends StatelessWidget {
  const WTripDetailPackage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Const.parentMargin()),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [TColors.primaryColor.withOpacity(0.1), TColors.baseWhite],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Tiket Weekday - Domestik", style: TText.bodyMBold()),
          Const.gap(x: 4),
          ...[1, 2]
              .map(
                (item) => Container(
                  padding: EdgeInsets.all(Const.parentMargin()),
                  decoration: BoxDecoration(
                    color: TColors.baseWhite,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(color: Colors.black.withOpacity(0.02), blurRadius: 10, offset: const Offset(0, 3)),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(child: Text("[Domestik - Weekday] Tiket Masuk Villa Asri Makmur Sekali", style: TText.bodySSemiBold())),
                          Const.gap(x: 2),
                          Text("Detail", style: TText.bodySSemiBold(color: TColors.primaryColor)),
                        ],
                      ),
                      Const.gap(x: 3.5),
                      Row(
                        children: [
                          const Icon(IconsaxPlusLinear.money, size: 16),
                          Const.gap(x: 2),
                          Text("Tidak bisa refund", style: TText.bodyXSRegular()),
                        ],
                      ),
                      Const.gap(x: 2),
                      Row(
                        children: [
                          const Icon(IconsaxPlusLinear.calendar, size: 16),
                          Const.gap(x: 2),
                          Text("Pesan tiket untuk besok", style: TText.bodyXSRegular()),
                        ],
                      ),
                      Const.gap(x: 3.5),
                      Container(width: double.infinity, height: 1, color: TColors.neutral10),
                      Const.gap(x: 3.5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Rp 493.000", style: TText.bodyMBold(color: TColors.primaryColor)),
                          WButton(onTap: () {}, label: "Pilih", size: WButtonSize.xs),
                        ],
                      )
                    ],
                  ),
                ),
              )
              .toList()
              .joinWidget(Const.gap(x: 4)),
        ],
      ),
    );
  }
}
