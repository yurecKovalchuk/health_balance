// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'health_balance_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HealthBalanceModel _$HealthBalanceModelFromJson(Map<String, dynamic> json) {
  return _HealthBalanceModel.fromJson(json);
}

/// @nodoc
mixin _$HealthBalanceModel {
  @JsonKey(name: 'calendarDay')
  DateTime? get calendarDay => throw _privateConstructorUsedError;
  @JsonKey(name: 'body')
  double? get body => throw _privateConstructorUsedError;
  @JsonKey(name: 'mind')
  double? get mind => throw _privateConstructorUsedError;
  @JsonKey(name: 'spirit')
  double? get spirit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HealthBalanceModelCopyWith<HealthBalanceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthBalanceModelCopyWith<$Res> {
  factory $HealthBalanceModelCopyWith(
          HealthBalanceModel value, $Res Function(HealthBalanceModel) then) =
      _$HealthBalanceModelCopyWithImpl<$Res, HealthBalanceModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'calendarDay') DateTime? calendarDay,
      @JsonKey(name: 'body') double? body,
      @JsonKey(name: 'mind') double? mind,
      @JsonKey(name: 'spirit') double? spirit});
}

/// @nodoc
class _$HealthBalanceModelCopyWithImpl<$Res, $Val extends HealthBalanceModel>
    implements $HealthBalanceModelCopyWith<$Res> {
  _$HealthBalanceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calendarDay = freezed,
    Object? body = freezed,
    Object? mind = freezed,
    Object? spirit = freezed,
  }) {
    return _then(_value.copyWith(
      calendarDay: freezed == calendarDay
          ? _value.calendarDay
          : calendarDay // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as double?,
      mind: freezed == mind
          ? _value.mind
          : mind // ignore: cast_nullable_to_non_nullable
              as double?,
      spirit: freezed == spirit
          ? _value.spirit
          : spirit // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HealthBalanceModelImplCopyWith<$Res>
    implements $HealthBalanceModelCopyWith<$Res> {
  factory _$$HealthBalanceModelImplCopyWith(_$HealthBalanceModelImpl value,
          $Res Function(_$HealthBalanceModelImpl) then) =
      __$$HealthBalanceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'calendarDay') DateTime? calendarDay,
      @JsonKey(name: 'body') double? body,
      @JsonKey(name: 'mind') double? mind,
      @JsonKey(name: 'spirit') double? spirit});
}

/// @nodoc
class __$$HealthBalanceModelImplCopyWithImpl<$Res>
    extends _$HealthBalanceModelCopyWithImpl<$Res, _$HealthBalanceModelImpl>
    implements _$$HealthBalanceModelImplCopyWith<$Res> {
  __$$HealthBalanceModelImplCopyWithImpl(_$HealthBalanceModelImpl _value,
      $Res Function(_$HealthBalanceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calendarDay = freezed,
    Object? body = freezed,
    Object? mind = freezed,
    Object? spirit = freezed,
  }) {
    return _then(_$HealthBalanceModelImpl(
      calendarDay: freezed == calendarDay
          ? _value.calendarDay
          : calendarDay // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as double?,
      mind: freezed == mind
          ? _value.mind
          : mind // ignore: cast_nullable_to_non_nullable
              as double?,
      spirit: freezed == spirit
          ? _value.spirit
          : spirit // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HealthBalanceModelImpl implements _HealthBalanceModel {
  const _$HealthBalanceModelImpl(
      {@JsonKey(name: 'calendarDay') this.calendarDay,
      @JsonKey(name: 'body') this.body,
      @JsonKey(name: 'mind') this.mind,
      @JsonKey(name: 'spirit') this.spirit});

  factory _$HealthBalanceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HealthBalanceModelImplFromJson(json);

  @override
  @JsonKey(name: 'calendarDay')
  final DateTime? calendarDay;
  @override
  @JsonKey(name: 'body')
  final double? body;
  @override
  @JsonKey(name: 'mind')
  final double? mind;
  @override
  @JsonKey(name: 'spirit')
  final double? spirit;

  @override
  String toString() {
    return 'HealthBalanceModel(calendarDay: $calendarDay, body: $body, mind: $mind, spirit: $spirit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HealthBalanceModelImpl &&
            (identical(other.calendarDay, calendarDay) ||
                other.calendarDay == calendarDay) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.mind, mind) || other.mind == mind) &&
            (identical(other.spirit, spirit) || other.spirit == spirit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, calendarDay, body, mind, spirit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HealthBalanceModelImplCopyWith<_$HealthBalanceModelImpl> get copyWith =>
      __$$HealthBalanceModelImplCopyWithImpl<_$HealthBalanceModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HealthBalanceModelImplToJson(
      this,
    );
  }
}

abstract class _HealthBalanceModel implements HealthBalanceModel {
  const factory _HealthBalanceModel(
          {@JsonKey(name: 'calendarDay') final DateTime? calendarDay,
          @JsonKey(name: 'body') final double? body,
          @JsonKey(name: 'mind') final double? mind,
          @JsonKey(name: 'spirit') final double? spirit}) =
      _$HealthBalanceModelImpl;

  factory _HealthBalanceModel.fromJson(Map<String, dynamic> json) =
      _$HealthBalanceModelImpl.fromJson;

  @override
  @JsonKey(name: 'calendarDay')
  DateTime? get calendarDay;
  @override
  @JsonKey(name: 'body')
  double? get body;
  @override
  @JsonKey(name: 'mind')
  double? get mind;
  @override
  @JsonKey(name: 'spirit')
  double? get spirit;
  @override
  @JsonKey(ignore: true)
  _$$HealthBalanceModelImplCopyWith<_$HealthBalanceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
