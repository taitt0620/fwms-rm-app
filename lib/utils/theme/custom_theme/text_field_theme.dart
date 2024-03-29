import 'package:flutter/material.dart';

class CustomTextFieldTheme {
  CustomTextFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle: TextStyle().copyWith(fontSize: 14.0, color: Colors.black),
    hintStyle: TextStyle().copyWith(fontSize: 14.0, color: Colors.black),
    errorStyle: TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle:
        TextStyle().copyWith(color: Colors.black.withOpacity(0.8)),
    border: OutlineInputBorder().copyWith(
      borderSide: BorderSide(
        color: Colors.grey,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(12),
    ),
    enabledBorder: OutlineInputBorder().copyWith(
      borderSide: BorderSide(
        color: Colors.grey,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(12),
    ),
    focusedBorder: OutlineInputBorder().copyWith(
      borderSide: BorderSide(
        color: Colors.black12,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(12),
    ),
    errorBorder: OutlineInputBorder().copyWith(
      borderSide: BorderSide(
        color: Colors.redAccent,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(12),
    ),
    focusedErrorBorder: OutlineInputBorder().copyWith(
      borderSide: BorderSide(
        color: Colors.orange,
        width: 2,
      ),
      borderRadius: BorderRadius.circular(12),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle: TextStyle().copyWith(fontSize: 14.0, color: Colors.black),
    hintStyle: TextStyle().copyWith(fontSize: 14.0, color: Colors.black),
    errorStyle: TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle:
        TextStyle().copyWith(color: Colors.black.withOpacity(0.8)),
    border: OutlineInputBorder().copyWith(
      borderSide: BorderSide(
        color: Colors.grey,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(12),
    ),
    enabledBorder: OutlineInputBorder().copyWith(
      borderSide: BorderSide(
        color: Colors.grey,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(12),
    ),
    focusedBorder: OutlineInputBorder().copyWith(
      borderSide: BorderSide(
        color: Colors.black12,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(12),
    ),
    errorBorder: OutlineInputBorder().copyWith(
      borderSide: BorderSide(
        color: Colors.redAccent,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(12),
    ),
    focusedErrorBorder: OutlineInputBorder().copyWith(
      borderSide: BorderSide(
        color: Colors.orange,
        width: 2,
      ),
      borderRadius: BorderRadius.circular(12),
    ),
  );
}
