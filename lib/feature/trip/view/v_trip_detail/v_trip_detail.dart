import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wizh_test/feature/trip/view/v_trip_detail/v_trip_detail_mobile.dart';

class VTripDetail extends GetResponsiveView {
  VTripDetail({super.key});

  @override
  Widget? phone() => const VTripDetailMobile();
}