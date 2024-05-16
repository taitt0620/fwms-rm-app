import 'package:flutter/widgets.dart';
import 'package:fwms_rm_app/utils/constants/colors.dart';

class CustomRoundedContainer extends StatelessWidget {
  const CustomRoundedContainer(
      {super.key,
      this.width,
      this.height,
      this.radius = 12,
      this.child,
      this.showBorder = false,
      this.borderColor = AppColors.borderPrimary,
      this.backgroundColor = AppColors.white,
      this.padding,
      this.margin});

  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(radius),
          border: showBorder
              ? Border.all(
                  color: borderColor,
                )
              : null,
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withOpacity(0.03),
              spreadRadius: 0,
              blurRadius: 12,
              offset: const Offset(5, 7),
            )
          ]),
      child: child,
    );
  }
}
