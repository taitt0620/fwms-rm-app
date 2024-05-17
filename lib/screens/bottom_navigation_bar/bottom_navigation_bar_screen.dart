import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fwms_rm_app/features/bottom_navigation_bar/bloc/bottom_nav_bar_bloc.dart';
import 'package:fwms_rm_app/screens/enquiry/enquiry-screen.dart';
import 'package:fwms_rm_app/screens/home/home_screen.dart';
import 'package:fwms_rm_app/screens/search/search_screen.dart';
import 'package:fwms_rm_app/screens/setting/setting_screen.dart';
import 'package:fwms_rm_app/utils/constants/colors.dart';
import 'package:iconsax/iconsax.dart';

List<BottomNavigationBarItem> bottomNavItems = <BottomNavigationBarItem>[
  /// Home
  const BottomNavigationBarItem(
    icon: Icon(Iconsax.home, size: 24, color: AppColors.black),
    label: 'Home',
    activeIcon: ColorFiltered(
      colorFilter: ColorFilter.mode(AppColors.primary, BlendMode.srcIn),
      child: Icon(Iconsax.home, size: 24),
    ),
  ),

  /// Search
  const BottomNavigationBarItem(
    icon: Icon(Iconsax.search_normal_1, size: 24, color: AppColors.black),
    label: 'Search',
    activeIcon: ColorFiltered(
      colorFilter: ColorFilter.mode(AppColors.primary, BlendMode.srcIn),
      child: Icon(Iconsax.search_normal_1, size: 24),
    ),
  ),

  /// Enquiry
  const BottomNavigationBarItem(
    icon: Icon(Iconsax.element_2, size: 24, color: AppColors.black),
    label: 'Enquiry',
    activeIcon: ColorFiltered(
      colorFilter: ColorFilter.mode(AppColors.primary, BlendMode.srcIn),
      child: Icon(Iconsax.element_2, size: 24, color: AppColors.black),
    ),
  ),

  /// Setting
  const BottomNavigationBarItem(
    icon: Icon(Iconsax.setting_2, size: 24, color: AppColors.black),
    label: 'Setting',
    activeIcon: ColorFiltered(
      colorFilter: ColorFilter.mode(AppColors.primary, BlendMode.srcIn),
      child: Icon(Iconsax.setting_2, size: 24, color: AppColors.black),
    ),
  ),
];

List<Widget> bottomNavScreens = const <Widget>[
  HomeScreen(),
  SearchScreen(),
  EnquiryScreen(),
  SettingScreen()
];

class BottomNavigationBarScreen extends StatelessWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BottomNavBarBloc, BottomNavBarState>(
      listener: (context, state) {},
      builder: (context, state) {
        void onItemTapped(int index) {
          BlocProvider.of<BottomNavBarBloc>(context)
              .add(TabChanged(tabIndex: index));
        }

        return Scaffold(
          body: bottomNavScreens.elementAt(state.tabIndex),
          bottomNavigationBar: SizedBox(
            height: 80,
            child: BottomNavigationBar(
              backgroundColor: AppColors.white,
              items: bottomNavItems,
              currentIndex: state.tabIndex,
              selectedItemColor: AppColors.primary,
              unselectedItemColor: AppColors.black,
              showUnselectedLabels: true,
              selectedFontSize: 14,
              unselectedFontSize: 12,
              elevation: 3,
              type: BottomNavigationBarType.fixed,
              onTap: (index) {
                onItemTapped(index);
              },
            ),
          ),
        );
      },
    );
  }
}
