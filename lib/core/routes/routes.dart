import 'package:get/get.dart';
import 'package:wizh_test/feature/main/main_route.dart';
import 'package:wizh_test/feature/trip/trip_route.dart';
// import 'package:wizh_test/feature/auth/auth_route.dart';
// import 'package:wizh_test/feature/bakulku/bakulku_route.dart';
// import 'package:wizh_test/feature/edukasi/edukasi_route.dart';
// import 'package:wizh_test/feature/main/main_route.dart';
// import 'package:wizh_test/feature/pohon_dana/pohon_dana_route.dart';
// import 'package:wizh_test/feature/auth/auth_route.dart';
// import 'package:wizh_test/feature/consultation/consultation_route.dart';
// import 'package:wizh_test/feature/job/job_route.dart';
// import 'package:wizh_test/feature/main/main_route.dart';
// import 'package:wizh_test/feature/mapping/mapping_route.dart';
// import 'package:wizh_test/feature/setting/setting_route.dart';

class BaseRoute {
  static List<GetPage> route = [
    ...MainRoute.routes,
    ...TripRoute.routes,
    // ...BakulkuRoute.routes,
    // ...PohonDanaRoute.routes,
    // ...EdukasiRoute.routes,
    // ...MappingRoute.routes,
    // ...DeviceRoute.routes,
    // ...AttendanceRoute.routes,
    // ...OtherRoute.routes,
    // ...ReportRoute.routes,
    // ...SalaryRoute.routes,
  ];
}