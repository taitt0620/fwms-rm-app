import 'package:flutter/material.dart';

class AppHelper {
  static bool isTokenExpired(int expiresInMilliseconds, DateTime loginDateTime,
      [DateTime? currentDateTime]) {
    DateTime expiryDateTime =
        loginDateTime.add(Duration(milliseconds: expiresInMilliseconds));
    currentDateTime ??= DateTime.now();
    return currentDateTime.isAfter(expiryDateTime);
  }
  static double getAppBarHeight() {
    return kToolbarHeight;
  }
}
