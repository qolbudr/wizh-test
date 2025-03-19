import 'package:wizh_test/core/errors/exception.dart';
import 'package:wizh_test/core/errors/failure.dart';

class ErrorHandler {
  static String handleError(Object e) {
    if(e is Failure) return e.message;
    if(e is ConnectionException) return e.message ?? 'Terjadi kesalahan';
    if(e is ServerException) return e.message ?? 'Terjadi kesalahan';
    if(e is ClientException) return e.message ?? 'Terjadi kesalahan';

    return 'Terjadi kesalahan';
  }
}