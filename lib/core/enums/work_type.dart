import 'package:wizh_test/core/widget/w_tag.dart';

enum EWorkType {
  fulltime(color: WTagsColor.blue),
  parttime(color: WTagsColor.red),
  freelance(color: WTagsColor.orange),
  internship(color: WTagsColor.green);

  const EWorkType({required this.color});
  final WTagsColor color;
  
}