// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'health_balance_model.freezed.dart';

part 'health_balance_model.g.dart';

@freezed
class HealthBalanceModel with _$HealthBalanceModel {
  const factory HealthBalanceModel({
    @JsonKey(name: 'calendarDay') DateTime? calendarDay,
    @JsonKey(name: 'body') double? body,
    @JsonKey(name: 'mind') double? mind,
    @JsonKey(name: 'spirit') double? spirit,
  }) = _HealthBalanceModel;

  factory HealthBalanceModel.fromJson(Map<String, dynamic> json) => _$HealthBalanceModelFromJson(json);

  factory HealthBalanceModel.defaultValues() => HealthBalanceModel(
        calendarDay: DateTime.now(),
        body: 33.3,
        mind: 33.3,
        spirit: 33.3,
      );
}
