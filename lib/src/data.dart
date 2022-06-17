import 'package:kotc_core/src/auth/data.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppData with AuthDataMixin {
  static Future<void> initialize() async {
    _preferences = await SharedPreferences.getInstance();
    instance = AppData._();
  }

  static void del(String key) => _preferences.remove(key);

  static T get<T>(String key) => _preferences.get(key) as T;

  static void put<T>(String key, T value) {
    assert(T is String || T is double || T is int || T is bool);

    if (T is int) {
      _preferences.setInt(key, value as int);
    } else if (T is bool) {
      _preferences.setBool(key, value as bool);
    } else if (T is double) {
      _preferences.setDouble(key, value as double);
    } else if (T is String) {
      _preferences.setString(key, value as String);
    }
  }

  static late final AppData instance;

  AppData._();

  static late final SharedPreferences _preferences;
}
