import 'dart:async';

import 'package:health_balance/data/data.dart';
import 'package:health_balance/models/health_balance_model.dart';

class HealthRepository {
  HealthRepository(
    this._hiveData,
  );

  final HiveData _hiveData;

  Future<void> saveHealthBalance(HealthBalanceModel healthBalanceModel) async {
    _hiveData.saveData(healthBalanceModel);
  }

  Future<List<HealthBalanceDTO>> getListHealthBalanceDTO() async {
    final result = await _hiveData.getAllData();
    return result;
  }

  Future<void> deleteOldData() async {
    _hiveData.deleteOldData();
  }
}
