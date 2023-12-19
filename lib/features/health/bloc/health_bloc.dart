import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../models/models.dart';

part 'health_state.dart';

part 'health_bloc.freezed.dart';

class HealthBloc extends Cubit<HealthState> {
  HealthBloc() : super(HealthState(healthBalanceModel: HealthBalanceModel.defaultValues()));

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
