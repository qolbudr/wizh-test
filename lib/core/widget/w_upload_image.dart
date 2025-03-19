import 'dart:io';

import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:image_picker/image_picker.dart';
import 'package:wizh_test/core/constant/const.dart';
import 'package:wizh_test/core/themes/color_theme.dart';

class WUploadImage extends StatelessWidget {
  const WUploadImage({super.key, this.width, this.height, this.media, required this.onUpload, required this.onRemove});
  final double? width, height;
  final XFile? media;
  final void Function() onUpload, onRemove;

  @override
  Widget build(BuildContext context) {
    if (media == null) {
      return InkWell(
        onTap: onUpload,
        child: Container(
          width: width ?? 80,
          height: height ?? 80,
          decoration: BoxDecoration(
            border: Border.all(color: TColors.neutral20),
            borderRadius: BorderRadius.circular(Const.siblingMargin(x: 2)),
          ),
          child: const Center(
            child: Icon(IconsaxPlusLinear.document_upload, semanticLabel: "icon_upload"),
          ),
        ),
      );
    } else {
      return Stack(
        children: [
          Container(
            clipBehavior: Clip.antiAlias,
            width: width ?? 80,
            height: height ?? 80,
            decoration: BoxDecoration(
              border: Border.all(color: TColors.neutral20),
              borderRadius: BorderRadius.circular(Const.siblingMargin(x: 2)),
            ),
            child: Image.file(File(media!.path), fit: BoxFit.cover, semanticLabel: "uploaded_payment_proof"),
          ),
          Positioned(
            right: 0,
            top: 0,
            left: 0,
            bottom: 0,
            child: InkWell(
              onTap: onRemove,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Const.siblingMargin(x: 2)),
                  color: TColors.baseBlack.withOpacity(0.5),
                ),
                width: width ?? 80,
                height: height ?? 80,
                child: const Center(
                  child: Icon(
                    IconsaxPlusLinear.close_circle,
                    semanticLabel: "icon_remove",
                    size: 30,
                    color: TColors.baseWhite,
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    }
  }
}
