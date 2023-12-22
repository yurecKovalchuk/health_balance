part of 'graph_health_bloc.dart';

enum GraphHealthStatus {
  initial,
  loading,
  error,
  success,
}

@freezed
class GraphHealthState with _$GraphHealthState {
  const factory GraphHealthState({
    @Default(GraphHealthStatus.initial) GraphHealthStatus status,
    List <HealthBalanceDTO>? healthBalanceDTO,
    double? averageBody,
    double? averageMind,
    double? averageSpirit,
  }) = _GraphHealthState;
}

