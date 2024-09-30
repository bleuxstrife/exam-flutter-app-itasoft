import 'package:hive_flutter/hive_flutter.dart';

class LocalStorage {
  static const _boxIdentifier = 'localStorageexamappitasoft';

  static Future<void> initHive() async {
    await Hive.initFlutter();
    await Hive.openBox(_boxIdentifier);
  }

  static saveStringValue({required String key, String? value}) {
    var box = Hive.box(_boxIdentifier);
    return box.put(key, value);
  }

  static getStringValue({required String key}) {
    var box = Hive.box(_boxIdentifier);
    return box.get(key);
  }

  static saveBoolValue({required String key, bool? value}) {
    var box = Hive.box(_boxIdentifier);
    return box.put(key, value);
  }

  static delete({required String key}) {
    var box = Hive.box(_boxIdentifier);
    box.delete(key);
  }
}
