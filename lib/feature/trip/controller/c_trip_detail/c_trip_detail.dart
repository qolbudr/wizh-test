import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wizh_test/core/errors/failure.dart';
import 'package:wizh_test/core/models/status.dart';
import 'package:wizh_test/core/widget/w_snackbar.dart';
import 'package:wizh_test/feature/trip/controller/c_trip_detail/c_trip_detail_state.dart';
import 'package:wizh_test/repository/r_trip/r_trip.dart';

class CTripDetail extends GetxController with GetSingleTickerProviderStateMixin {
  static CTripDetail instance = Get.find();
  final Rx<CTripDetailState> _state = Rx<CTripDetailState>(const CTripDetailState());
  CTripDetailState get state => _state.value;
  final rTrip = Get.find<RITrip>();

  late TabController tabController;
  final scrollController = ScrollController();

  @override
  void onInit() {
    tabController = TabController(length: 3, vsync: this);
    tabController.addListener(() {
      _state.value = state.copyWith(tabIndex: tabController.index);
    });
    scrollController.addListener(listenScroll);
    onGetRecommendation();
    super.onInit();
  }

  void listenScroll() {
    if (scrollController.offset > 0) {
      _state.value = state.copyWith(headerOpacity: scrollController.offset > 240 ? 1 : scrollController.offset / 240);
    } else {
      _state.value = state.copyWith(headerOpacity: 0);
    }
  }

  void onGetRecommendation() async {
    try {
      _state.value = state.copyWith(status: const Status.loading());
      final result = await rTrip.getTrips();
      await Future.delayed(const Duration(milliseconds: 1500));
      _state.value = state.copyWith(recommendation: result.data ?? [], status: const Status.success());
    } catch (e) {
      _state.value = state.copyWith(status: const Status.error());
      WSnackBar.showSnackBar(type: WSnackBarType.danger, message: e is ClientFailure ? e.message : e.toString());
    }
  }

  @override
  dispose() {
    tabController.dispose();
    scrollController.dispose();
    super.dispose();
  }
}
