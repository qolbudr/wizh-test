import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wizh_test/core/models/status.dart';
import 'package:wizh_test/repository/r_trip/model/trip_model/trip_model.dart';

part 'c_home_state.freezed.dart';

@freezed
class CHomeState with _$CHomeState {
  const factory CHomeState({
    @Default([]) List<TripModel> data,
    @Default(0) double headerOpacity,
    @Default(Status.initial()) Status status,
  }) = _CHomeState;
}