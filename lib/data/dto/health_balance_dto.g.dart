// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_balance_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HealthBalanceDTOImpl _$$HealthBalanceDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$HealthBalanceDTOImpl(
      calendarDay: json['calendarDay'] == null
          ? null
          : DateTime.parse(json['calendarDay'] as String),
      body: (json['body'] as num?)?.toDouble(),
      mind: (json['mind'] as num?)?.toDouble(),
      spirit: (json['spirit'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$HealthBalanceDTOImplToJson(
        _$HealthBalanceDTOImpl instance) =>
    <String, dynamic>{
      'calendarDay': instance.calendarDay?.toIso8601String(),
      'body': instance.body,
      'mind': instance.mind,
      'spirit': instance.spirit,
    };
