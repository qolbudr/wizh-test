import 'package:freezed_annotation/freezed_annotation.dart';

part 'trip_model.freezed.dart';
part 'trip_model.g.dart';

@freezed
class TripModel with _$TripModel {
  const factory TripModel({
    num? id,
    String? title,
    String? location,
    num? price,
    num? rating,
    String? image,
  }) = _TripModel;

  factory TripModel.fromJson(Map<String, dynamic> json) => _$TripModelFromJson(json);
}