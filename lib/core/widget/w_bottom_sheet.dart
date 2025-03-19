import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wizh_test/core/constant/const.dart';
import 'package:wizh_test/core/themes/color_theme.dart';
import 'package:wizh_test/core/themes/text_theme.dart';

class WBottomSheet {
  static Future? showBottomSheet({String? title, List<Widget>? content, bool scrollingWithKeyboard = true, bool isDismissable = true}) async {
    await Get.bottomSheet(
      Padding(
        padding: scrollingWithKeyboard ? EdgeInsets.only(bottom: MediaQuery.of(Get.context!).viewInsets.bottom) : EdgeInsets.zero,
        child: Container(
          constraints: BoxConstraints(
            maxHeight: Get.height,
            maxWidth: Get.width,
            minHeight: 0,
            minWidth: Get.width,
          ),
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
          ),
          padding: EdgeInsets.all(Const.parentMargin(x: 4)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 44,
                height: 4,
                decoration: BoxDecoration(
                  color: TColors.neutral30,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              SizedBox(height: Const.parentMargin(x: 5)),
              if (title != null) ...[
                Row(
                  children: [
                    Text(
                      title,
                      style: TText.bodyBold(),
                    ),
                  ],
                ),
                SizedBox(height: Const.parentMargin(x: 5)),
              ],
              if (content != null) ...content,
            ],
          ),
        ),
      ),
      isScrollControlled: scrollingWithKeyboard,
      isDismissible: isDismissable,
    );
  }
}