// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'health_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HealthState {
  HealthStatus get status => throw _privateConstructorUsedError;
  HealthBalanceModel get healthBalanceModel =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HealthStateCopyWith<HealthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthStateCopyWith<$Res> {
  factory $HealthStateCopyWith(
          HealthState value, $Res Function(HealthState) then) =
      _$HealthStateCopyWithImpl<$Res, HealthState>;
  @useResult
  $Res call({HealthStatus status, HealthBalanceModel healthBalanceModel});

  $HealthBalanceModelCopyWith<$Res> get healthBalanceModel;
}

/// @nodoc
class _$HealthStateCopyWithImpl<$Res, $Val extends HealthState>
    implements $HealthStateCopyWith<$Res> {
  _$HealthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? healthBalanceModel = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HealthStatus,
      healthBalanceModel: null == healthBalanceModel
          ? _value.healthBalanceModel
          : healthBalanceModel // ignore: cast_nullable_to_non_nullable
              as HealthBalanceModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HealthBalanceModelCopyWith<$Res> get healthBalanceModel {
    return $HealthBalanceModelCopyWith<$Res>(_value.healthBalanceModel,
        (value) {
      return _then(_value.copyWith(healthBalanceModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HealthStateImplCopyWith<$Res>
    implements $HealthStateCopyWith<$Res> {
  factory _$$HealthStateImplCopyWith(
          _$HealthStateImpl value, $Res Function(_$HealthStateImpl) then) =
      __$$HealthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HealthStatus status, HealthBalanceModel healthBalanceModel});

  @override
  $HealthBalanceModelCopyWith<$Res> get healthBalanceModel;
}

/// @nodoc
class __$$HealthStateImplCopyWithImpl<$Res>
    extends _$HealthStateCopyWithImpl<$Res, _$HealthStateImpl>
    implements _$$HealthStateImplCopyWith<$Res> {
  __$$HealthStateImplCopyWithImpl(
      _$HealthStateImpl _value, $Res Function(_$HealthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? healthBalanceModel = null,
  }) {
    return _then(_$HealthStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HealthStatus,
      healthBalanceModel: null == healthBalanceModel
          ? _value.healthBalanceModel
          : healthBalanceModel // ignore: cast_nullable_to_non_nullable
              as HealthBalanceModel,
    ));
  }
}

/// @nodoc

class _$HealthStateImpl implements _HealthState {
  const _$HealthStateImpl(
      {this.status = HealthStatus.initial, required this.healthBalanceModel});

  @override
  @JsonKey()
  final HealthStatus status;
  @override
  final HealthBalanceModel healthBalanceModel;

  @override
  String toString() {
    return 'HealthState(status: $status, healthBalanceModel: $healthBalanceModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HealthStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.healthBalanceModel, healthBalanceModel) ||
                other.healthBalanceModel == healthBalanceModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, healthBalanceModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HealthStateImplCopyWith<_$HealthStateImpl> get copyWith =>
      __$$HealthStateImplCopyWithImpl<_$HealthStateImpl>(this, _$identity);
}

abstract class _HealthState implements HealthState {
  const factory _HealthState(
          {final HealthStatus status,
          required final HealthBalanceModel healthBalanceModel}) =
      _$HealthStateImpl;

  @override
  HealthStatus get status;
  @override
  HealthBalanceModel get healthBalanceModel;
  @override
  @JsonKey(ignore: true)
  _$$HealthStateImplCopyWith<_$HealthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
