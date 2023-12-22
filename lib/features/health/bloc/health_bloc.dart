import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:health_balance/data/data.dart';
import '../../../models/models.dart';

part 'health_state.dart';

part 'health_bloc.freezed.dart';

class HealthBloc extends Cubit<HealthState> {
  HealthBloc(
    this._healthRepository,
  ) : super(HealthState(
          healthBalanceModel: HealthBalanceModel.defaultValues(),
        ));
  final HealthRepository _healthRepository;

  void saveHealthBalance(HealthBalanceModel healthBalanceModel) async {
    emit(state.copyWith(status: HealthStatus.loading));
    try {
      await _healthRepository.saveHealthBalance(healthBalanceModel);
      emit(state.copyWith(status: HealthStatus.success));
    } catch (e) {
      emit(state.copyWith(status: HealthStatus.error));
    }
  }

  void updateValues(double valueBody, double valueMind, double valueSpirit) {
    double total = 100.0;
    double sum = valueBody + valueMind + valueSpirit;

    if (sum != total) {
      double diff = sum - total;
      double adjustment = diff / 3;

      final bodyValue = (valueBody - adjustment).clamp(0, 100).toDouble();
      final mindValue = (valueMind - adjustment).clamp(0, 100).toDouble();
      final spiritValue = (valueSpirit - adjustment).clamp(0, 100).toDouble();

      emit(state.copyWith(
        healthBalanceModel: state.healthBalanceModel.copyWith(
          body: bodyValue,
          mind: mindValue,
          spirit: spiritValue,
        ),
      ));
    } else {
      emit(state.copyWith(
        healthBalanceModel: state.healthBalanceModel.copyWith(
          body: valueBody,
          mind: valueMind,
          spirit: valueSpirit,
        ),
      ));
    }
  }
}
