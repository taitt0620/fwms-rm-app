import 'package:flutter/material.dart';
import 'package:fwms_rm_app/config/theme/app_pallete.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomElevatedButton(
      {super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppPallete.primaryColor,
        ),
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: AppPallete.transparentColor,
              shadowColor: AppPallete.transparentColor,
            ),
            child: Text(
              text,
              style: TextStyle(
                color: AppPallete.whiteColor,
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ));
  }
}
