import 'dart:async';
import 'package:dio/dio.dart';
// import 'package:get/get.dart';
// import 'package:wizh_test/feature/main/controller/c_main/c_main.dart';

class TokenInterceptor extends Interceptor {
  @override
  FutureOr<dynamic> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    // final oMain = Get.find<CMain>();
    // String token = oMain.state.token ?? "";
    // options.headers.putIfAbsent('Authorization', () => token);
    super.onRequest(options, handler);
  }
}