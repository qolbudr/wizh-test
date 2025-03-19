import 'package:get/get.dart';
import 'package:wizh_test/core/api/api.dart';
import 'package:wizh_test/core/database/db.dart';
import 'package:wizh_test/repository/r_trip/r_trip.dart';
// import 'package:wizh_test/feature/main/controller/c_main/c_main.dart';
// import 'package:wizh_test/repositories/r_auth/r_auth.dart';
// import 'package:wizh_test/repositories/r_bakulku/r_bakulku.dart';
// import 'package:wizh_test/repositories/r_edukasi/r_edukasi.dart';
// import 'package:wizh_test/repositories/r_pohon_dana/r_pohon_dana.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DatabaseHelper(), fenix: true);
    Get.lazyPut(() => IApi(), fenix: true);
    Get.lazyPut(() => RITrip(), fenix: true);
    // Get.lazyPut(() => RIProduct(), fenix: true);
    // Get.lazyPut(() => RIPohonDana(), fenix: true);
    // Get.lazyPut(() => RIEdukasi(), fenix: true);

    // Get.put(CMain(), permanent: true);
    // Get.put(CMainConsultant(), permanent: true);
    // Get.put(CDashboard(), permanent: true);
    // Get.put(CPosCashier(), permanent: true);
  }
}