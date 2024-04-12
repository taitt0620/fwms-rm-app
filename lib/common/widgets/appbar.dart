import 'package:flutter/material.dart';
import 'package:fwms_rm_app/utils/constants/image_strings.dart';
import 'package:fwms_rm_app/utils/constants/sizes.dart';

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
  });

  final Widget? title;
  final bool showBackArrow;
  final Image? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;
  final VoidCallback? onBackArrowPressed;
  final PreferredSizeWidget? bottom;

  static double getAppBarHeight() {
    return kToolbarHeight;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSizes.md),
          child: AppBar(
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
        // Expanded(
        //   child: Divider(
        //     color: AppColors.black.withOpacity(0.2),
        //     height: 1,
        //   ),
        // ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(getAppBarHeight());
}
