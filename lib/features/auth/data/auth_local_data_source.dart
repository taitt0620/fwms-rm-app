import 'package:fwms_rm_app/features/auth/data/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthLocalDataSource {
  AuthLocalDataSource(this.sharedPreferences);

  final SharedPreferences sharedPreferences;

  Future<void> saveToken(String token) async {
    await sharedPreferences.setString(AuthDataConstants.tokenKey, token);
  }

  Future<String?> getToken() async {
    return sharedPreferences.getString(AuthDataConstants.tokenKey);
  }

  Future<void> deleteToken() async {
    await sharedPreferences.remove(AuthDataConstants.tokenKey);
  }
}
