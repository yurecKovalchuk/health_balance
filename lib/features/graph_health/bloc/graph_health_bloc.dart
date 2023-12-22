import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:health_balance/data/data.dart';

part 'graph_health_state.dart';

part 'graph_health_bloc.freezed.dart';

class GraphHealthBloc extends Cubit<GraphHealthState> {
  GraphHealthBloc(
    this._healthRepository,
  ) : super(const GraphHealthState());
  final HealthRepository _healthRepository;

  void getListHealthBalanceDTO() async {
    final result = await _healthRepository.getListHealthBalanceDTO();
    emit(state.copyWith(healthBalanceDTO: result));
    if(state.healthBalanceDTO != null){
    averageValueForWeek();
    }
  }

  void averageValueForWeek() async{
    double averageBody = calculateAverage(state.healthBalanceDTO!.map((e) => e.body).toList());
    double averageMind = calculateAverage(state.healthBalanceDTO!.map((e) => e.mind).toList());
    double averageSpirit = calculateAverage(state.healthBalanceDTO!.map((e) => e.spirit).toList());
    emit(state.copyWith(
      averageBody: averageBody,
      averageMind: averageMind,
      averageSpirit: averageSpirit,
    ));
  }

  double calculateAverage(List<double?> values) {
    List<double> validValues = values.where((value) => value != null).map((value) => value!).toList();

    if (validValues.isEmpty) {
      return 0;
    }
    double sum = validValues.reduce((value, element) => value + element);
    return sum / validValues.length;
  }

  Map<String, double> averageValueToMap() {
    final dataMap = {
      "Body": state.averageBody!,
      "Mind": state.averageMind!,
      "Spirit": state.averageSpirit!,
    };
    return dataMap;
  }
}
