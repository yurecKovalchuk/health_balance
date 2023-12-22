// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'graph_health_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GraphHealthState {
  GraphHealthStatus get status => throw _privateConstructorUsedError;
  List<HealthBalanceDTO>? get healthBalanceDTO =>
      throw _privateConstructorUsedError;
  double? get averageBody => throw _privateConstructorUsedError;
  double? get averageMind => throw _privateConstructorUsedError;
  double? get averageSpirit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GraphHealthStateCopyWith<GraphHealthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GraphHealthStateCopyWith<$Res> {
  factory $GraphHealthStateCopyWith(
          GraphHealthState value, $Res Function(GraphHealthState) then) =
      _$GraphHealthStateCopyWithImpl<$Res, GraphHealthState>;
  @useResult
  $Res call(
      {GraphHealthStatus status,
      List<HealthBalanceDTO>? healthBalanceDTO,
      double? averageBody,
      double? averageMind,
      double? averageSpirit});
}

/// @nodoc
class _$GraphHealthStateCopyWithImpl<$Res, $Val extends GraphHealthState>
    implements $GraphHealthStateCopyWith<$Res> {
  _$GraphHealthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? healthBalanceDTO = freezed,
    Object? averageBody = freezed,
    Object? averageMind = freezed,
    Object? averageSpirit = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GraphHealthStatus,
      healthBalanceDTO: freezed == healthBalanceDTO
          ? _value.healthBalanceDTO
          : healthBalanceDTO // ignore: cast_nullable_to_non_nullable
              as List<HealthBalanceDTO>?,
      averageBody: freezed == averageBody
          ? _value.averageBody
          : averageBody // ignore: cast_nullable_to_non_nullable
              as double?,
      averageMind: freezed == averageMind
          ? _value.averageMind
          : averageMind // ignore: cast_nullable_to_non_nullable
              as double?,
      averageSpirit: freezed == averageSpirit
          ? _value.averageSpirit
          : averageSpirit // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GraphHealthStateImplCopyWith<$Res>
    implements $GraphHealthStateCopyWith<$Res> {
  factory _$$GraphHealthStateImplCopyWith(_$GraphHealthStateImpl value,
          $Res Function(_$GraphHealthStateImpl) then) =
      __$$GraphHealthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GraphHealthStatus status,
      List<HealthBalanceDTO>? healthBalanceDTO,
      double? averageBody,
      double? averageMind,
      double? averageSpirit});
}

/// @nodoc
class __$$GraphHealthStateImplCopyWithImpl<$Res>
    extends _$GraphHealthStateCopyWithImpl<$Res, _$GraphHealthStateImpl>
    implements _$$GraphHealthStateImplCopyWith<$Res> {
  __$$GraphHealthStateImplCopyWithImpl(_$GraphHealthStateImpl _value,
      $Res Function(_$GraphHealthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? healthBalanceDTO = freezed,
    Object? averageBody = freezed,
    Object? averageMind = freezed,
    Object? averageSpirit = freezed,
  }) {
    return _then(_$GraphHealthStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GraphHealthStatus,
      healthBalanceDTO: freezed == healthBalanceDTO
          ? _value._healthBalanceDTO
          : healthBalanceDTO // ignore: cast_nullable_to_non_nullable
              as List<HealthBalanceDTO>?,
      averageBody: freezed == averageBody
          ? _value.averageBody
          : averageBody // ignore: cast_nullable_to_non_nullable
              as double?,
      averageMind: freezed == averageMind
          ? _value.averageMind
          : averageMind // ignore: cast_nullable_to_non_nullable
              as double?,
      averageSpirit: freezed == averageSpirit
          ? _value.averageSpirit
          : averageSpirit // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$GraphHealthStateImpl implements _GraphHealthState {
  const _$GraphHealthStateImpl(
      {this.status = GraphHealthStatus.initial,
      final List<HealthBalanceDTO>? healthBalanceDTO,
      this.averageBody,
      this.averageMind,
      this.averageSpirit})
      : _healthBalanceDTO = healthBalanceDTO;

  @override
  @JsonKey()
  final GraphHealthStatus status;
  final List<HealthBalanceDTO>? _healthBalanceDTO;
  @override
  List<HealthBalanceDTO>? get healthBalanceDTO {
    final value = _healthBalanceDTO;
    if (value == null) return null;
    if (_healthBalanceDTO is EqualUnmodifiableListView)
      return _healthBalanceDTO;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final double? averageBody;
  @override
  final double? averageMind;
  @override
  final double? averageSpirit;

  @override
  String toString() {
    return 'GraphHealthState(status: $status, healthBalanceDTO: $healthBalanceDTO, averageBody: $averageBody, averageMind: $averageMind, averageSpirit: $averageSpirit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GraphHealthStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._healthBalanceDTO, _healthBalanceDTO) &&
            (identical(other.averageBody, averageBody) ||
                other.averageBody == averageBody) &&
            (identical(other.averageMind, averageMind) ||
                other.averageMind == averageMind) &&
            (identical(other.averageSpirit, averageSpirit) ||
                other.averageSpirit == averageSpirit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_healthBalanceDTO),
      averageBody,
      averageMind,
      averageSpirit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GraphHealthStateImplCopyWith<_$GraphHealthStateImpl> get copyWith =>
      __$$GraphHealthStateImplCopyWithImpl<_$GraphHealthStateImpl>(
          this, _$identity);
}

abstract class _GraphHealthState implements GraphHealthState {
  const factory _GraphHealthState(
      {final GraphHealthStatus status,
      final List<HealthBalanceDTO>? healthBalanceDTO,
      final double? averageBody,
      final double? averageMind,
      final double? averageSpirit}) = _$GraphHealthStateImpl;

  @override
  GraphHealthStatus get status;
  @override
  List<HealthBalanceDTO>? get healthBalanceDTO;
  @override
  double? get averageBody;
  @override
  double? get averageMind;
  @override
  double? get averageSpirit;
  @override
  @JsonKey(ignore: true)
  _$$GraphHealthStateImplCopyWith<_$GraphHealthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
