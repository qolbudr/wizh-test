import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wizh_test/feature/trip/controller/c_trip_detail/c_trip_detail_state.dart';
import 'package:wizh_test/repository/r_trip/r_trip.dart';

class CTripDetail extends GetxController with GetSingleTickerProviderStateMixin {
  static CTripDetail instance = Get.find();
  final Rx<CTripDetailState> _state = Rx<CTripDetailState>(const CTripDetailState());
  CTripDetailState get state => _state.value;
  final rTrip = Get.find<RITrip>();

  late TabController tabController;

  @override
  void onInit() {
    tabController = TabController(length: 3, vsync: this);
    tabController.addListener(() {
      _state.value = state.copyWith(tabIndex: tabController.index);
    });
    super.onInit();
  }

  @override
  dispose() {
    tabController.dispose();
    super.dispose();
  }
}
