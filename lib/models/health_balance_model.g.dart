// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_balance_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HealthBalanceModelAdapter extends TypeAdapter<HealthBalanceModel> {
  @override
  final int typeId = 1;

  @override
  HealthBalanceModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HealthBalanceModel(
      calendarDay: fields[1] as DateTime?,
      body: fields[2] as double?,
      mind: fields[3] as double?,
      spirit: fields[4] as double?,
    );
  }

  @override
  void write(BinaryWriter writer, HealthBalanceModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(1)
      ..write(obj.calendarDay)
      ..writeByte(2)
      ..write(obj.body)
      ..writeByte(3)
      ..write(obj.mind)
      ..writeByte(4)
      ..write(obj.spirit);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HealthBalanceModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HealthBalanceModelImpl _$$HealthBalanceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HealthBalanceModelImpl(
      calendarDay: json['calendarDay'] == null
          ? null
          : DateTime.parse(json['calendarDay'] as String),
      body: (json['body'] as num?)?.toDouble(),
      mind: (json['mind'] as num?)?.toDouble(),
      spirit: (json['spirit'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$HealthBalanceModelImplToJson(
        _$HealthBalanceModelImpl instance) =>
    <String, dynamic>{
      'calendarDay': instance.calendarDay?.toIso8601String(),
      'body': instance.body,
      'mind': instance.mind,
      'spirit': instance.spirit,
    };
