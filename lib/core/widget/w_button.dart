import 'package:flutter/material.dart';
import 'package:wizh_test/core/constant/const.dart';
import 'package:wizh_test/core/themes/color_theme.dart';
import 'package:wizh_test/core/themes/text_theme.dart';

enum WButtonType {
  outlinePrimary(
    borderColor: TColors.primaryColor,
    disabledBorderColor: TColors.neutral20,
    backgroundColor: Colors.transparent,
    foregroundColor: TColors.primaryColor,
    disabledBackgroundColor: Colors.transparent,
    disabledForegroundColor: TColors.neutral20,
  ),
  whiteGhost(
    borderColor: Colors.transparent,
    disabledBorderColor: Colors.transparent,
    backgroundColor: Color.fromARGB(44, 255, 255, 255),
    foregroundColor: TColors.baseWhite,
    disabledBackgroundColor: Colors.transparent,
    disabledForegroundColor: TColors.neutral20,
  ),
  outlineTertiary(
    borderColor: TColors.neutral70,
    disabledBorderColor: TColors.neutral20,
    backgroundColor: Colors.transparent,
    foregroundColor: TColors.neutral70,
    disabledBackgroundColor: Colors.transparent,
    disabledForegroundColor: TColors.neutral20,
  ),
  outlineDanger(
    borderColor: TColors.red50,
    disabledBorderColor: TColors.neutral20,
    backgroundColor: Colors.transparent,
    foregroundColor: TColors.red50,
    disabledBackgroundColor: Colors.transparent,
    disabledForegroundColor: TColors.neutral20,
  ),
  mainPrimary(
    borderColor: Colors.transparent,
    disabledBorderColor: Colors.transparent,
    backgroundColor: TColors.primaryColor,
    foregroundColor: TColors.baseWhite,
    disabledBackgroundColor: TColors.neutral20,
    disabledForegroundColor: TColors.neutral40,
  ),
  mainDanger(
    borderColor: Colors.transparent,
    disabledBorderColor: Colors.transparent,
    backgroundColor: TColors.red50,
    foregroundColor: TColors.baseWhite,
    disabledBackgroundColor: TColors.red10,
    disabledForegroundColor: TColors.red30,
  ),
  mainOrange(
    borderColor: Colors.transparent,
    disabledBorderColor: Colors.transparent,
    backgroundColor: TColors.orange50,
    foregroundColor: TColors.baseWhite,
    disabledBackgroundColor: TColors.orange10,
    disabledForegroundColor: TColors.orange30,
  ),
  textPrimary(
    borderColor: Colors.transparent,
    disabledBorderColor: Colors.transparent,
    backgroundColor: Colors.transparent,
    foregroundColor: TColors.primaryColor,
    disabledBackgroundColor: Colors.transparent,
    disabledForegroundColor: TColors.blue20,
  ),
  circlePrimary(
    borderColor: Colors.transparent,
    disabledBorderColor: Colors.transparent,
    backgroundColor: TColors.primaryColor,
    foregroundColor: TColors.baseWhite,
    disabledBackgroundColor: TColors.neutral20,
    disabledForegroundColor: TColors.neutral40,
  );

  const WButtonType({
    this.borderColor,
    this.disabledBorderColor,
    this.backgroundColor,
    this.foregroundColor,
    this.disabledBackgroundColor,
    this.disabledForegroundColor,
  });

  final Color? backgroundColor, foregroundColor, disabledBackgroundColor, disabledForegroundColor, borderColor, disabledBorderColor;
}

enum WButtonState {
  disabled,
  active,
}

enum WButtonSize {
  xs(iconSize: 12, padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12)),
  small(iconSize: 14, padding: EdgeInsets.symmetric(vertical: 14, horizontal: 16)),
  medium(iconSize: 16, padding: EdgeInsets.symmetric(vertical: 14, horizontal: 16)),
  big(iconSize: 20, padding: EdgeInsets.symmetric(vertical: 14, horizontal: 16));

  const WButtonSize({this.iconSize, this.padding});

  final double? iconSize;
  final EdgeInsets? padding;
}

class WButton extends StatelessWidget {
  const WButton({
    super.key,
    this.fullWidth = false,
    this.leftIcon,
    this.rightIcon,
    this.label,
    this.type = WButtonType.mainPrimary,
    this.size = WButtonSize.medium,
    this.state = WButtonState.active,
    this.onTap,
    this.isLoading = false,
  });

  final bool? fullWidth;
  final IconData? leftIcon;
  final IconData? rightIcon;
  final String? label;
  final WButtonType? type;
  final WButtonSize? size;
  final WButtonState? state;
  final void Function()? onTap;
  final bool isLoading;

  TextStyle _getTextStyle(WButtonSize size) {
    if (size == WButtonSize.xs) return TText.bodyXSSemiBold();
    if (size == WButtonSize.small) return TText.bodySSemiBold();
    if (size == WButtonSize.medium) return TText.bodyMSemiBold();
    if (size == WButtonSize.big) return TText.bodySemiBold();

    return TText.bodyMSemiBold();
  }

  @override
  Widget build(BuildContext context) {
    late WButtonState btnState;
    btnState = isLoading ? WButtonState.disabled : state ?? WButtonState.active;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          flex: fullWidth! ? 1 : 0,
          child: ElevatedButton(
            style: ButtonStyle(
              padding: WidgetStateProperty.all(
                type == WButtonType.textPrimary || type == WButtonType.circlePrimary ? const EdgeInsets.all(0) : size?.padding,
              ),
              elevation: WidgetStateProperty.all(type == WButtonType.textPrimary || type == WButtonType.outlineTertiary || type == WButtonType.outlinePrimary || type == WButtonType.outlineDanger || type == WButtonType.whiteGhost ? 0 : null),
              backgroundColor: WidgetStateProperty.all(btnState == WButtonState.active ? type?.backgroundColor : type?.disabledBackgroundColor),
              foregroundColor: WidgetStateProperty.all(btnState == WButtonState.active ? type?.foregroundColor : type?.disabledForegroundColor),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(type == WButtonType.circlePrimary ? 100 : 10),
                  side: BorderSide(color: btnState == WButtonState.active ? type!.borderColor! : type!.disabledBorderColor!, width: 1),
                ),
              ),
            ),
            onPressed: isLoading || state == WButtonState.disabled ? null : onTap,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (leftIcon != null && !isLoading) ...[
                  Icon(leftIcon!, size: size?.iconSize),
                ],
                if (isLoading) ...[
                  SizedBox(
                    width: size?.iconSize,
                    height: size?.iconSize,
                    child: CircularProgressIndicator(color: type?.foregroundColor),
                  ),
                ] else ...[
                  if (label != null) ...[
                    SizedBox(width: Const.siblingMargin()),
                    Text("$label", style: _getTextStyle(size!)),
                    SizedBox(width: Const.siblingMargin()),
                  ]
                ],
                if (rightIcon != null && !isLoading) ...[
                  Icon(rightIcon!, size: size?.iconSize),
                ],
              ],
            ),
          ),
        ),
      ],
    );
  }
}
