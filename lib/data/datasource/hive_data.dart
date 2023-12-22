import 'package:health_balance/data/dto/health_balance_dto.dart';
import 'package:health_balance/models/health_balance_model.dart';
import 'package:hive/hive.dart';

class HiveData {
  void saveData(HealthBalanceModel data) async {
    var box = await Hive.openBox<HealthBalanceModel>('data_box');
    DateTime now = DateTime.now();
    int dayOfWeek = now.weekday;
    await box.put('$dayOfWeek', data);
  }

  Future<List<HealthBalanceDTO>> getAllData() async {
    var box = await Hive.openBox<HealthBalanceModel>('data_box');
    return box.values
        .map((model) => HealthBalanceDTO(
              calendarDay: model.calendarDay,
              body: model.body,
              mind: model.mind,
              spirit: model.spirit,
            ))
        .toList();
  }

  void deleteOldData() async {
    var box = await Hive.openBox<HealthBalanceModel>('data_box');
    var cutoffDate = DateTime.now().subtract(const Duration(days: 7));

    for (var key in box.keys) {
      var item = box.get(key);
      if (item != null && item.calendarDay!.isBefore(cutoffDate)) {
        await box.delete(key);
      }
    }
  }
}
