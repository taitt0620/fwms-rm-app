import 'package:flutter/material.dart';
import 'package:fwms_rm_app/utils/constants/image_strings.dart';
import 'package:fwms_rm_app/utils/constants/sizes.dart';
import 'package:fwms_rm_app/utils/helpers/app_helper.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title,
    this.leadingIcon,
    this.actions,
    this.leadingOnPressed,
    this.showBackArrow = false,
    this.onBackArrowPressed,
    this.bottom,
    this.elevation,
    this.backgroundColor,
  });

  final Widget? title;
  final bool showBackArrow;
  final Image? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;
  final VoidCallback? onBackArrowPressed;
  final PreferredSizeWidget? bottom;
  final double? elevation;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSizes.md),
          child: AppBar(
            elevation: elevation ?? 0,
            backgroundColor: backgroundColor,
            automaticallyImplyLeading: false,
            leading: showBackArrow
                ? IconButton(
                    onPressed: onBackArrowPressed,
                    icon: const Image(
                      image: AssetImage(AppImages.iconBack),
                      height: 24,
                      width: 24,
                    ),
                  )
                : leadingIcon != null
                    ? IconButton(
                        onPressed: leadingOnPressed,
                        icon: leadingIcon!,
                      )
                    : null,
            title: title,
            actions: actions,
            bottom: bottom,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppHelper.getAppBarHeight());
}
