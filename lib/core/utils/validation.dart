import 'package:get/get.dart';
import 'package:wizh_test/core/utils/extension.dart';

class Validation {
  static String? required({String? value, String? label}) {
    if (value == null || value.trim().isEmpty) {
      return '${label ?? ''} tidak boleh kosong.';
    }
    return null;
  }

  static String? email(String? value, {bool isRequired = true}) {
    if (value == null || value.trim().isEmpty) {
      if (isRequired) return '${'email'.tr} tidak boleh kosong';
      return null;
    }
    if (!value.isValidEmail()) return 'Format ${'email'.tr} salah';
    return null;
  }

  static String? password(String? value, {String? confirmPassword}) {
    // Tidak Boleh Kosong
    if (value == null || value.trim().isEmpty) {
      return 'Password tidak boleh kosong';
    }

    // Minimal 8 Karakter
    if (value.length < 8) return 'Password harus lebih dari 8 karakter';

    if (confirmPassword != null && value != confirmPassword) {
      return 'Konfirmasi password tidak cocok';
    }
    return null;
  }

  static String? name(String? value) {
    // Tidak Boleh Kosong
    if (value == null || value.trim().isEmpty) return 'Nama tidak boleh kosong';

    // Simbol
    if (value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return 'Nama tidak boleh terdapat simbol';
    }

    return null;
  }

  static String? equals(
    String? value, {
    required String trueValue,
    required String message,
  }) {
    if (value == null || value.trim().isEmpty) return null;

    if (value != trueValue) return message;

    return null;
  }
}
