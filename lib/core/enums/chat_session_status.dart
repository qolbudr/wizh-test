import 'package:wizh_test/core/widget/w_tag.dart';

enum EChatSessionStatus {
  online(color: WTagsColor.green),
  busy(color: WTagsColor.orange),
  offline(color: WTagsColor.red);

  const EChatSessionStatus({required this.color});
  final WTagsColor color;
}
