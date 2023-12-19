part of 'health_bloc.dart';

@freezed
class HealthState with _$HealthState {
  const factory HealthState({
    required HealthBalanceModel healthBalanceModel,
  }) = _HealthState;
}
