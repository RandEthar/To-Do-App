import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  late SharedPreferences _prefs;

 Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

   String? getDataString({required String key}) {
    return _prefs.getString(key);
  }

  dynamic getData({required String key}) {
    return _prefs.get(key);
  }

  Future<bool> saveData({required String key, required dynamic value}) async {
    if (value is bool) {
      return await _prefs.setBool(key, value);
    } else if (value is int) {
      return await _prefs.setInt(key, value);
    } else if (value is String) {
      return await _prefs.setString(key, value);
    } else if (value is double) {
      return await _prefs.setDouble(key, value);
    } else {
      throw Exception("Unsupported type");
    }
  }

   Future<bool> removeData({required String key}) async {
    return await _prefs.remove(key);
  }

   Future<bool> clearData() async {
    return await _prefs.clear();
  }
}
