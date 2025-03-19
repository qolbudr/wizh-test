import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wizh_test/feature/main/view/v_home/v_home_mobile.dart';

class VHome extends GetResponsiveView {
  VHome({super.key});

  @override
  Widget? phone() => const VHomeMobile();
}