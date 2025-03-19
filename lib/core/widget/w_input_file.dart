import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:wizh_test/core/constant/const.dart';
import 'package:wizh_test/core/themes/color_theme.dart';
import 'package:wizh_test/core/themes/text_theme.dart';

class WInputFile extends StatefulWidget {
  const WInputFile({super.key, required this.onChange});
  final void Function(XFile) onChange;

  @override
  State<WInputFile> createState() => _WInputFileState();
}

class _WInputFileState extends State<WInputFile> {
  XFile? pickedFile;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        final ImagePicker picker = ImagePicker();
        final file = await picker.pickImage(source: ImageSource.gallery);
        if (file != null) {
          setState(() {
            pickedFile = file;
          });

          widget.onChange.call(file);
        }
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: Const.parentMargin()),
        color: TColors.primaryColor.withOpacity(0.1),
        width: double.infinity,
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (pickedFile == null) ...[
              const Icon(Icons.upload, color: TColors.primaryColor),
              SizedBox(width: Const.siblingMargin(x: 2)),
              Expanded(child: Text("Klik disini untuk mengunggah foto", style: TText.bodySRegular(color: TColors.primaryColor), maxLines: 1, overflow: TextOverflow.ellipsis)),
            ] else ...[
              const Icon(Icons.image, color: TColors.primaryColor),
              SizedBox(width: Const.siblingMargin(x: 2)),
              Expanded(child: Text(pickedFile!.name, style: TText.bodySRegular(color: TColors.primaryColor), maxLines: 1, overflow: TextOverflow.ellipsis)),
            ],
          ],
        ),
      ),
    );
  }
}
