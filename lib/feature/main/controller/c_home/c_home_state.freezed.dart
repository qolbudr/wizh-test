// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'c_home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CHomeState {
  List<TripModel> get data => throw _privateConstructorUsedError;
  double get headerOpacity => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;

  /// Create a copy of CHomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CHomeStateCopyWith<CHomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CHomeStateCopyWith<$Res> {
  factory $CHomeStateCopyWith(
          CHomeState value, $Res Function(CHomeState) then) =
      _$CHomeStateCopyWithImpl<$Res, CHomeState>;
  @useResult
  $Res call({List<TripModel> data, double headerOpacity, Status status});
}

/// @nodoc
class _$CHomeStateCopyWithImpl<$Res, $Val extends CHomeState>
    implements $CHomeStateCopyWith<$Res> {
  _$CHomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CHomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? headerOpacity = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TripModel>,
      headerOpacity: null == headerOpacity
          ? _value.headerOpacity
          : headerOpacity // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CHomeStateImplCopyWith<$Res>
    implements $CHomeStateCopyWith<$Res> {
  factory _$$CHomeStateImplCopyWith(
          _$CHomeStateImpl value, $Res Function(_$CHomeStateImpl) then) =
      __$$CHomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TripModel> data, double headerOpacity, Status status});
}

/// @nodoc
class __$$CHomeStateImplCopyWithImpl<$Res>
    extends _$CHomeStateCopyWithImpl<$Res, _$CHomeStateImpl>
    implements _$$CHomeStateImplCopyWith<$Res> {
  __$$CHomeStateImplCopyWithImpl(
      _$CHomeStateImpl _value, $Res Function(_$CHomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CHomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? headerOpacity = null,
    Object? status = null,
  }) {
    return _then(_$CHomeStateImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TripModel>,
      headerOpacity: null == headerOpacity
          ? _value.headerOpacity
          : headerOpacity // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }
}

/// @nodoc

class _$CHomeStateImpl implements _CHomeState {
  const _$CHomeStateImpl(
      {final List<TripModel> data = const [],
      this.headerOpacity = 0,
      this.status = const Status.initial()})
      : _data = data;

  final List<TripModel> _data;
  @override
  @JsonKey()
  List<TripModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final double headerOpacity;
  @override
  @JsonKey()
  final Status status;

  @override
  String toString() {
    return 'CHomeState(data: $data, headerOpacity: $headerOpacity, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CHomeStateImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.headerOpacity, headerOpacity) ||
                other.headerOpacity == headerOpacity) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_data), headerOpacity, status);

  /// Create a copy of CHomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CHomeStateImplCopyWith<_$CHomeStateImpl> get copyWith =>
      __$$CHomeStateImplCopyWithImpl<_$CHomeStateImpl>(this, _$identity);
}

abstract class _CHomeState implements CHomeState {
  const factory _CHomeState(
      {final List<TripModel> data,
      final double headerOpacity,
      final Status status}) = _$CHomeStateImpl;

  @override
  List<TripModel> get data;
  @override
  double get headerOpacity;
  @override
  Status get status;

  /// Create a copy of CHomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CHomeStateImplCopyWith<_$CHomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
