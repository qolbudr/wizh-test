import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:wizh_test/core/constant/const.dart';
import 'package:wizh_test/core/themes/text_theme.dart';

class WTripDetailFacilities extends StatelessWidget {
  const WTripDetailFacilities({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Const.parentMargin()),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Fasilitas", style: TText.bodyMBold()),
          Const.gap(x: 4),
          GridView.count(
            padding: EdgeInsets.zero,
            crossAxisCount: 2,
            mainAxisSpacing: Const.siblingMargin(x: 2),
            crossAxisSpacing: Const.siblingMargin(x: 2),
            shrinkWrap: true,
            childAspectRatio: 4 / 1,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Row(
                children: [
                  const Icon(IconsaxPlusLinear.monitor_mobbile),
                  Const.gap(x: 2),
                  Expanded(child: Text("Device Access", style: TText.bodyXSSemiBold(), maxLines: 1, overflow: TextOverflow.ellipsis)),
                ],
              ),
              Row(
                children: [
                  const Icon(IconsaxPlusLinear.wifi),
                  Const.gap(x: 2),
                  Expanded(child: Text("Wifi", style: TText.bodyXSSemiBold(), maxLines: 1, overflow: TextOverflow.ellipsis)),
                ],
              ),
              Row(
                children: [
                  const Icon(IconsaxPlusLinear.money),
                  Const.gap(x: 2),
                  Expanded(child: Text("Free Refund Cancelation", style: TText.bodyXSSemiBold(), maxLines: 1, overflow: TextOverflow.ellipsis)),
                ],
              ),
              Row(
                children: [
                  const Icon(IconsaxPlusLinear.car),
                  Const.gap(x: 2),
                  Expanded(child: Text("Parking", style: TText.bodyXSSemiBold(), maxLines: 1, overflow: TextOverflow.ellipsis)),
                ],
              ),
              Row(
                children: [
                  const Icon(IconsaxPlusLinear.monitor),
                  Const.gap(x: 2),
                  Expanded(child: Text("Smart TV", style: TText.bodyXSSemiBold(), maxLines: 1, overflow: TextOverflow.ellipsis)),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
