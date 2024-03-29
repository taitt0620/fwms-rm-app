import 'package:flutter/material.dart';
import 'package:fwms_rm_app/config/theme/app_pallete.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static _border([Color color = AppPallete.enabledBorderColorDefault]) =>
      OutlineInputBorder(
        borderSide: BorderSide(
          color: color,
          width: 0.5,
        ),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      );
  static final themeData = ThemeData.light().copyWith(
    scaffoldBackgroundColor: AppPallete.backgroundColor,
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.only(left: 20, top: 19),
      constraints: BoxConstraints(
        // maxWidth: 328,
        maxHeight: 50,
      ),
      labelStyle: TextStyle(
        color: AppPallete.blackColor,
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
      floatingLabelStyle: TextStyle(
        color: AppPallete.blackColor,
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
      prefixIconColor: AppPallete.greyColor,
      enabledBorder: _border(),
      focusedBorder: _border(AppPallete.focusedBorderColor),
    ),
    textTheme: GoogleFonts.poppinsTextTheme(),
    appBarTheme: AppBarTheme(
      backgroundColor: AppPallete.backgroundColor,
      elevation: 0,
      iconTheme: IconThemeData(color: AppPallete.blackColor),
      titleTextStyle: TextStyle(
        color: AppPallete.blackColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
