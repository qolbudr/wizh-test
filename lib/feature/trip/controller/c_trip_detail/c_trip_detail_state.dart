import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wizh_test/core/models/status.dart';

part 'c_trip_detail_state.freezed.dart';

@freezed
class CTripDetailState with _$CTripDetailState {
  const factory CTripDetailState({
    @Default(0) int tabIndex,
    @Default(Status.initial()) Status status,
  }) = _CTripDetailState;
}