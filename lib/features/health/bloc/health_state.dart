part of 'health_bloc.dart';

enum HealthStatus {
  initial,
  loading,
  error,
  success,
}

@freezed
class HealthState with _$HealthState {
  const factory HealthState({
    @Default(HealthStatus.initial) HealthStatus status,
    required HealthBalanceModel healthBalanceModel,
  }) = _HealthState;
}
