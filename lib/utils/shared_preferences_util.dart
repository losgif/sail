import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesUtil {
  SharedPreferencesUtil._();

  static SharedPreferencesUtil _instance;
  SharedPreferences sharedPreferences;

  static SharedPreferencesUtil getInstance() {
    if (_instance == null) {
      _instance = SharedPreferencesUtil._();
    }
    return _instance;
  }

  Future<bool> setBool(String tag, bool isFirst) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.setBool(tag, isFirst);
  }

  Future<bool> setString(String tag, String data) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.setString(tag, data);
  }

  Future<bool> getBool(String tag) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool(tag);
  }

  Future<String> getString(String tag) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(tag);
  }

  Future<bool> clear() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.clear();
  }
}
