import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:wizh_test/core/constant/const.dart';
import 'package:wizh_test/core/themes/color_theme.dart';

class WTripCardSkeleton extends StatelessWidget {
  const WTripCardSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Shimmer.fromColors(
            baseColor: TColors.neutral10,
            highlightColor: TColors.neutral30,
            child: Container(height: 120, color: TColors.primaryColor),
          ),
          Const.gap(x: 2),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Const.parentMargin()),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Shimmer.fromColors(
                    baseColor: TColors.neutral10,
                    highlightColor: TColors.neutral30,
                    child: Container(height: 10, width: 120, color: TColors.primaryColor),
                  ),
                  Const.gap(x: 2),
                  Shimmer.fromColors(
                    baseColor: TColors.neutral10,
                    highlightColor: TColors.neutral30,
                    child: Container(height: 10, width: 180, color: TColors.primaryColor),
                  ),
                  Const.gap(x: 2),
                  Shimmer.fromColors(
                    baseColor: TColors.neutral10,
                    highlightColor: TColors.neutral30,
                    child: Container(height: 8, width: 80, color: TColors.primaryColor),
                  ),
                  Const.gap(x: 2),
                  Shimmer.fromColors(
                    baseColor: TColors.neutral10,
                    highlightColor: TColors.neutral30,
                    child: Container(height: 8, width: 100, color: TColors.primaryColor),
                  ),
                  const Spacer(),
                  Shimmer.fromColors(
                    baseColor: TColors.neutral10,
                    highlightColor: TColors.neutral30,
                    child: Container(height: 14, width: 100, color: TColors.primaryColor),
                  ),
                  Const.gap(x: 2),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
