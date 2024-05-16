import 'package:flutter/material.dart';
import 'package:fwms_rm_app/utils/constants/colors.dart';

class CustomTabBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomTabBar(
      {super.key,
      required this.tabs,
      required this.isScrollable,
      required this.tabAlignment});

  final List<Widget> tabs;
  final bool isScrollable;
  final TabAlignment tabAlignment;
  static double getAppBarHeight() {
    return kToolbarHeight;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: AppColors.white,
        child: TabBar(
          tabs: tabs,
          isScrollable: isScrollable,
          tabAlignment: tabAlignment,
          indicatorColor: AppColors.primary,
          labelColor: AppColors.primary,
          unselectedLabelColor: AppColors.black,
          labelStyle: Theme.of(context).textTheme.bodyMedium,
        ));
  }

  @override
  Size get preferredSize => Size.fromHeight(getAppBarHeight());
}
