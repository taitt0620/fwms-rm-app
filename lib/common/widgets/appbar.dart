import 'package:flutter/material.dart';
import 'package:fwms_rm_app/config/theme/app_pallete.dart';
import 'package:fwms_rm_app/utils/constants/colors.dart';
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
  });

  final Widget? title;
  final bool showBackArrow;
  final Image? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  static double getAppBarHeight() {
    return kToolbarHeight;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSizes.md),
          child: AppBar(
            automaticallyImplyLeading: false,
            leading: showBackArrow
                ? IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Image(
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
          ),
        ),
        Divider(
          color: AppColors.black.withOpacity(0.2),
          height: 1,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(getAppBarHeight());
}
