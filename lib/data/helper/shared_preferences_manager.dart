import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesManger {
  static late final SharedPreferences _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  Future<void> setBool(String key, bool isLoggedIn) async {
    await _prefs.setBool("isLoggedIn", isLoggedIn);
  }

  bool getbool(String key) {
    return _prefs.getBool(key) ?? false;
  }
}
