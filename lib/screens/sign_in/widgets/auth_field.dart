import 'package:flutter/material.dart';
import 'package:fwms_rm_app/config/theme/app_pallete.dart';

class AuthField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final Widget? prefixIcon;
  final bool? obscureText;
  const AuthField({
    super.key,
    required this.labelText,
    this.prefixIcon,
    required this.controller,
    this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controller,
        obscureText: obscureText ?? false,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: AppPallete.blackColor,
        ),
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: prefixIcon,
          ),
          labelText: labelText,
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter $labelText';
          }
          return null;
        });
  }
}
