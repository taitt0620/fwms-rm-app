import 'package:flutter/material.dart';
import 'package:fwms_rm_app/utils/constants/colors.dart';

class CustomTabBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomTabBar({super.key, required this.tabs});

  final List<Widget> tabs;
  static double getAppBarHeight() {
    return kToolbarHeight;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: AppColors.white,
        child: TabBar(
          tabs: tabs,
          isScrollable: true,
          indicatorColor: AppColors.primary,
          labelColor: AppColors.primary,
          unselectedLabelColor: AppColors.darkGrey,
        ));
  }

  @override
  Size get preferredSize => Size.fromHeight(getAppBarHeight());
}
