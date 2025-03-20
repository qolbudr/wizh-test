import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wizh_test/core/models/status.dart';
import 'package:wizh_test/repository/r_trip/model/trip_model/trip_model.dart';

part 'c_trip_detail_state.freezed.dart';

@freezed
class CTripDetailState with _$CTripDetailState {
  const factory CTripDetailState({
    @Default(0) int tabIndex,
    @Default(0.0) double headerOpacity,
    @Default([]) List<TripModel> recommendation,
    @Default(Status.initial()) Status status,
  }) = _CTripDetailState;
}