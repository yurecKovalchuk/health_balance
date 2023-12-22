// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hive/hive.dart';

part 'health_balance_model.freezed.dart';

part 'health_balance_model.g.dart';

@freezed
@HiveType(typeId: 1)
class HealthBalanceModel with _$HealthBalanceModel {
  @HiveField(0)
  const factory HealthBalanceModel({
    @JsonKey(name: 'calendarDay') @HiveField(1) DateTime? calendarDay,
    @JsonKey(name: 'body') @HiveField(2) double? body,
    @JsonKey(name: 'mind') @HiveField(3) double? mind,
    @JsonKey(name: 'spirit') @HiveField(4) double? spirit,
  }) = _HealthBalanceModel;

  factory HealthBalanceModel.fromJson(Map<String, dynamic> json) => _$HealthBalanceModelFromJson(json);

  factory HealthBalanceModel.defaultValues() => HealthBalanceModel(
    calendarDay: DateTime.now(),
    body: 33.3,
    mind: 33.3,
    spirit: 33.3,
  );
}
