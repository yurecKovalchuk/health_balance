import 'package:freezed_annotation/freezed_annotation.dart';

part 'health_balance_dto.freezed.dart';

part 'health_balance_dto.g.dart';

@freezed
class HealthBalanceDTO with _$HealthBalanceDTO {
  const factory HealthBalanceDTO({
    @JsonKey(name: 'calendarDay') DateTime? calendarDay,
    @JsonKey(name: 'body') double? body,
    @JsonKey(name: 'mind') double? mind,
    @JsonKey(name: 'spirit') double? spirit,
  }) = _HealthBalanceDTO;

  factory HealthBalanceDTO.fromJson(Map<String, dynamic> json) => _$HealthBalanceDTOFromJson(json);
}
