// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'c_trip_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CTripDetailState {
  int get tabIndex => throw _privateConstructorUsedError;
  double get headerOpacity => throw _privateConstructorUsedError;
  List<TripModel> get recommendation => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;

  /// Create a copy of CTripDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CTripDetailStateCopyWith<CTripDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CTripDetailStateCopyWith<$Res> {
  factory $CTripDetailStateCopyWith(
          CTripDetailState value, $Res Function(CTripDetailState) then) =
      _$CTripDetailStateCopyWithImpl<$Res, CTripDetailState>;
  @useResult
  $Res call(
      {int tabIndex,
      double headerOpacity,
      List<TripModel> recommendation,
      Status status});
}

/// @nodoc
class _$CTripDetailStateCopyWithImpl<$Res, $Val extends CTripDetailState>
    implements $CTripDetailStateCopyWith<$Res> {
  _$CTripDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CTripDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabIndex = null,
    Object? headerOpacity = null,
    Object? recommendation = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      tabIndex: null == tabIndex
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      headerOpacity: null == headerOpacity
          ? _value.headerOpacity
          : headerOpacity // ignore: cast_nullable_to_non_nullable
              as double,
      recommendation: null == recommendation
          ? _value.recommendation
          : recommendation // ignore: cast_nullable_to_non_nullable
              as List<TripModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CTripDetailStateImplCopyWith<$Res>
    implements $CTripDetailStateCopyWith<$Res> {
  factory _$$CTripDetailStateImplCopyWith(_$CTripDetailStateImpl value,
          $Res Function(_$CTripDetailStateImpl) then) =
      __$$CTripDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int tabIndex,
      double headerOpacity,
      List<TripModel> recommendation,
      Status status});
}

/// @nodoc
class __$$CTripDetailStateImplCopyWithImpl<$Res>
    extends _$CTripDetailStateCopyWithImpl<$Res, _$CTripDetailStateImpl>
    implements _$$CTripDetailStateImplCopyWith<$Res> {
  __$$CTripDetailStateImplCopyWithImpl(_$CTripDetailStateImpl _value,
      $Res Function(_$CTripDetailStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CTripDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabIndex = null,
    Object? headerOpacity = null,
    Object? recommendation = null,
    Object? status = null,
  }) {
    return _then(_$CTripDetailStateImpl(
      tabIndex: null == tabIndex
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      headerOpacity: null == headerOpacity
          ? _value.headerOpacity
          : headerOpacity // ignore: cast_nullable_to_non_nullable
              as double,
      recommendation: null == recommendation
          ? _value._recommendation
          : recommendation // ignore: cast_nullable_to_non_nullable
              as List<TripModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }
}

/// @nodoc

class _$CTripDetailStateImpl implements _CTripDetailState {
  const _$CTripDetailStateImpl(
      {this.tabIndex = 0,
      this.headerOpacity = 0.0,
      final List<TripModel> recommendation = const [],
      this.status = const Status.initial()})
      : _recommendation = recommendation;

  @override
  @JsonKey()
  final int tabIndex;
  @override
  @JsonKey()
  final double headerOpacity;
  final List<TripModel> _recommendation;
  @override
  @JsonKey()
  List<TripModel> get recommendation {
    if (_recommendation is EqualUnmodifiableListView) return _recommendation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recommendation);
  }

  @override
  @JsonKey()
  final Status status;

  @override
  String toString() {
    return 'CTripDetailState(tabIndex: $tabIndex, headerOpacity: $headerOpacity, recommendation: $recommendation, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CTripDetailStateImpl &&
            (identical(other.tabIndex, tabIndex) ||
                other.tabIndex == tabIndex) &&
            (identical(other.headerOpacity, headerOpacity) ||
                other.headerOpacity == headerOpacity) &&
            const DeepCollectionEquality()
                .equals(other._recommendation, _recommendation) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tabIndex, headerOpacity,
      const DeepCollectionEquality().hash(_recommendation), status);

  /// Create a copy of CTripDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CTripDetailStateImplCopyWith<_$CTripDetailStateImpl> get copyWith =>
      __$$CTripDetailStateImplCopyWithImpl<_$CTripDetailStateImpl>(
          this, _$identity);
}

abstract class _CTripDetailState implements CTripDetailState {
  const factory _CTripDetailState(
      {final int tabIndex,
      final double headerOpacity,
      final List<TripModel> recommendation,
      final Status status}) = _$CTripDetailStateImpl;

  @override
  int get tabIndex;
  @override
  double get headerOpacity;
  @override
  List<TripModel> get recommendation;
  @override
  Status get status;

  /// Create a copy of CTripDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CTripDetailStateImplCopyWith<_$CTripDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
