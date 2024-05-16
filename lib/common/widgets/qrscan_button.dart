import 'package:flutter/material.dart';
import 'package:fwms_rm_app/utils/constants/colors.dart';

class QRScanFloatingActionButton extends StatelessWidget {
  const QRScanFloatingActionButton(
      {super.key,
      this.height,
      required this.borderRadius,
      this.gradient,
      this.width,
      required this.backgroundColor,
      this.borderColor,
      this.splashColor,
      required this.onPressed,
      this.child});

  /// The [height] can be use of button height
  final double? height;

  /// The [borderRadius] can be use of button borderRadius
  final double borderRadius;

  final Gradient? gradient;

  /// The [width] can be use of button width
  final double? width;

  /// The [backgroundColor] [borderColor] can be use of button backgroundColor and borderColor
  final Color backgroundColor;
  final Color? borderColor;
  final Color? splashColor;

  /// The [onPressed] can be use of button onPress
  final Function onPressed;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width,
      height: height,
      decoration: BoxDecoration(
          gradient: gradient ??
              LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  backgroundColor,
                  backgroundColor,
                ],
              ),
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(color: borderColor ?? Colors.transparent)),
      child: InkWell(
        borderRadius: BorderRadius.circular(borderRadius),
        splashColor: AppColors.primary,
        onTap: () {
          onPressed();
        },
        child: SizedBox(height: height, width: width, child: child),
      ),
    );
  }
}
