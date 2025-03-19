import 'package:freezed_annotation/freezed_annotation.dart';

class IdToString implements JsonConverter<String?, num?> {
  const IdToString();
  
  @override
  String? fromJson(num? json) {
    return json?.toString();
  }

  @override
  num? toJson(String? object) {
    return num.tryParse(object ?? '');
  }
}