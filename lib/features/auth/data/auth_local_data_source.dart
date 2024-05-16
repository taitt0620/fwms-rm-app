import 'package:fwms_rm_app/features/auth/data/auth_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthLocalDataSource {
  AuthLocalDataSource(this.sharedPreferences);

  final SharedPreferences sharedPreferences;

  Future<void> saveToken(String token) async {
    await sharedPreferences.setString(AuthDataConstants.tokenKey, token);
  }

  Future<void> saveUser(String userId, String username, String role) async {
    await sharedPreferences.setString(AuthDataConstants.userId, userId);
    await sharedPreferences.setString(AuthDataConstants.name, username);
    await sharedPreferences.setString(AuthDataConstants.role, role);
  }

  Future<void> saveTokenExpirationTime(int expiresInMilliseconds) async {
    await sharedPreferences.setInt(
        AuthDataConstants.expiresInMilliseconds, expiresInMilliseconds);
  }

  Future<int?> getTokenExpirationTime() async {
    return sharedPreferences.getInt(AuthDataConstants.expiresInMilliseconds);
  }

  Future<String?> getUserId() async {
    return sharedPreferences.getString(AuthDataConstants.userId);
  }

  Future<String?> getToken() async {
    return sharedPreferences.getString(AuthDataConstants.tokenKey);
  }
  
  Future<void> deleteToken() async {
    await sharedPreferences.remove(AuthDataConstants.tokenKey);
  }
}
