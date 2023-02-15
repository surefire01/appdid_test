import 'package:appdid_test/data/helper/shared_preferences_manager.dart';

class AuthService {
  final SharedPreferencesManger _manger = SharedPreferencesManger();

  final isLoggedin = "isLoggedIn";

  bool getLoginStatus() {
    return _manger.getbool(isLoggedin);
  }

  Future<void> setLoginStatus(bool status) async {
    await _manger.setBool(isLoggedin, status);
  }

  Future<void> login(String username, String password) async {
    if (username == "admin" && password == "1234") {
      setLoginStatus(true);
    } else {
      throw Exception("Username/Password incorrect");
    }
  }

  Future<void> logout() async {
    await _manger.setBool(isLoggedin, false);
  }
}
