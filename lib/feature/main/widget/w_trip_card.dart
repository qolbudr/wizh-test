import 'package:flutter/material.dart';
import 'package:wizh_test/core/constant/const.dart';
import 'package:wizh_test/core/themes/color_theme.dart';
import 'package:wizh_test/core/themes/text_theme.dart';
import 'package:wizh_test/core/utils/extension.dart';
import 'package:wizh_test/feature/trip/trip_route.dart';
import 'package:wizh_test/repository/r_trip/model/trip_model/trip_model.dart';

class WTripCard extends StatelessWidget {
  const WTripCard({super.key, required this.item});
  final TripModel item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => TripRoute.toDetail(id: item.id),
      child: Container(
        width: 200,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          color: TColors.baseWhite,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.02), blurRadius: 10, offset: const Offset(0, 3)),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(item.image!, width: double.infinity, height: 120, fit: BoxFit.cover),
            Const.gap(x: 2),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: Const.parentMargin()),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(item.title!, style: TText.bodySBold()),
                    Text(item.location!, style: TText.bodyXSRegular()),
                    Text("${item.rating}/5 (942 Review)", style: TText.bodyXSRegular()),
                    const Spacer(),
                    Text(item.price!.toCurrency(), style: TText.bodyBold(color: TColors.primaryColor)),
                    Const.gap(x: 2),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
