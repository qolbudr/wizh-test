import 'package:flutter/material.dart';
import 'package:wizh_test/core/constant/const.dart';
import 'package:wizh_test/core/themes/color_theme.dart';
import 'package:wizh_test/core/themes/text_theme.dart';

enum WTagsColor {
  blue(backgroundColor: TColors.blue10, foregroundColor: TColors.blue80),
  green(backgroundColor: TColors.green10, foregroundColor: TColors.green80),
  red(backgroundColor: TColors.red10, foregroundColor: TColors.red80),
  orange(backgroundColor: TColors.orange10, foregroundColor: TColors.orange80);

  const WTagsColor({required this.backgroundColor, required this.foregroundColor});
  final Color backgroundColor, foregroundColor;
}

class WTags extends StatelessWidget {
  const WTags({super.key, this.color = WTagsColor.blue, required this.label});
  final WTagsColor color;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: Const.siblingMargin(x: 1),
        horizontal: Const.siblingMargin(x: 2),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color.backgroundColor,
      ),
      child: Text(
        label,
        style: TText.bodyXSSemiBold(color: color.foregroundColor),
      ),
    );
  }
}
