import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:wizh_test/core/errors/failure.dart';
import 'package:wizh_test/core/models/menu_items.dart';
import 'package:wizh_test/core/models/status.dart';
import 'package:wizh_test/core/widget/w_snackbar.dart';
import 'package:wizh_test/feature/main/controller/c_home/c_home_state.dart';
import 'package:wizh_test/repository/r_trip/r_trip.dart';

class CHome extends GetxController {
  static CHome instance = Get.find();
  final Rx<CHomeState> _state = Rx<CHomeState>(const CHomeState());
  CHomeState get state => _state.value;
  final rTrip = Get.find<RITrip>();

  final refreshController = RefreshController(initialRefresh: true);
  final scrollController = ScrollController();

  final menuItems = [
    MenuItems(title: "Vacation", icon: "assets/images/vacation.png", route: "/"),
    MenuItems(title: "Hotel", icon: "assets/images/hotel.png", route: "/"),
    MenuItems(title: "Beach", icon: "assets/images/beach.png", route: "/"),
    MenuItems(title: "Bus", icon: "assets/images/bus.png", route: "/"),
    MenuItems(title: "Maps", icon: "assets/images/maps.png", route: "/"),
    MenuItems(title: "Nature", icon: "assets/images/nature.png", route: "/"),
    MenuItems(title: "Open Trip", icon: "assets/images/open_trip.png", route: "/"),
    MenuItems(title: "Photo", icon: "assets/images/photo.png", route: "/"),
  ];

  @override
  void onInit() {
    scrollController.addListener(() {
      if(scrollController.offset > 0) {
        _state.value = state.copyWith(headerOpacity: scrollController.offset > 50 ? 1 : scrollController.offset / 50);
      } else {
        _state.value = state.copyWith(headerOpacity: 0);
      }
    });
    super.onInit();
  }

  void onGetData() async {
    try {
      _state.value = state.copyWith(status: const Status.loading());
      final response = await rTrip.getTrips();
      _state.value = state.copyWith(data: response.data ?? [], status: const Status.success());
      refreshController.refreshCompleted();
    } catch (e) {
      if (refreshController.isRefresh) refreshController.refreshFailed();
      if (refreshController.isLoading) refreshController.loadFailed();
      WSnackBar.showSnackBar(type: WSnackBarType.danger, message: e is ClientFailure ? e.message : e.toString());
    }
  }

  @override
  void dispose() {
    refreshController.dispose();
    scrollController.dispose();
    super.dispose();
  }
}
