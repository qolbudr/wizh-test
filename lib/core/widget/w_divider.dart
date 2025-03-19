import 'package:flutter/material.dart';
import 'package:wizh_test/core/themes/color_theme.dart';

class WDivider extends StatelessWidget {
  const WDivider({super.key, this.height, this.color});
  final double? height;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Divider(color: color ?? TColors.neutral10, height: height ?? 1);
  }
}
