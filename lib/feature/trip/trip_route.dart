import 'package:get/get.dart';
import 'package:wizh_test/feature/trip/view/v_trip_detail/v_trip_detail.dart';

class TripRoute {
  static const prefix = '/trip';
  static const detail = '$prefix/detail';

  static List<GetPage> routes = [
    GetPage(name: detail, page: () => VTripDetail()),
  ];
  
  static Future? toDetail({num? id}) => Get.toNamed(detail, arguments: id);
}