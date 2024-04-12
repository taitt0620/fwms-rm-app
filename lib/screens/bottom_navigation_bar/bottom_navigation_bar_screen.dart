import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fwms_rm_app/features/bottom_navigation_bar/bloc/bottom_nav_bar_bloc.dart';
import 'package:fwms_rm_app/screens/bottom_navigation_bar/screens.dart';
import 'package:fwms_rm_app/utils/constants/colors.dart';
import 'package:fwms_rm_app/utils/constants/image_strings.dart';
import 'package:go_router/go_router.dart';

List<BottomNavigationBarItem> bottomNavItems = <BottomNavigationBarItem>[
  const BottomNavigationBarItem(
    icon: Image(
      image: AssetImage(
        AppImages.iconHomeOutline,
      ),
    ),
    label: 'Home',
    activeIcon: ColorFiltered(
      colorFilter: ColorFilter.mode(AppColors.primary, BlendMode.srcIn),
      child: Image(
        image: AssetImage(
          AppImages.iconHome,
        ),
      ),
    ),
  ),
  const BottomNavigationBarItem(
    icon: Image(
      image: AssetImage(
        AppImages.iconSearchOutline,
      ),
    ),
    label: 'Search',
    activeIcon: ColorFiltered(
      colorFilter: ColorFilter.mode(AppColors.primary, BlendMode.srcIn),
      child: Image(
        image: AssetImage(
          AppImages.iconSearch,
        ),
      ),
    ),
  ),
  BottomNavigationBarItem(
    icon: Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.primary,
      ),
      child: Center(
        child: Image(
          image: AssetImage(
            AppImages.iconQrCodeOutline,
          ),
          color: Colors.white,
        ),
      ),
    ),
    label: '',
    // activeIcon: Container(
    //   width: 55,
    //   height: 55,
    //   decoration: BoxDecoration(
    //     shape: BoxShape.circle,
    //     color: AppColors.primary,
    //   ),
    //   child: Center(
    //     child: Image(
    //       image: AssetImage(
    //         AppImages.iconQrCodeOutline,
    //       ),
    //       color: Colors.white,
    //     ),
    //   ),
    // ),
  ),
  const BottomNavigationBarItem(
    icon: Image(
      image: AssetImage(
        AppImages.iconProductOutline,
      ),
    ),
    label: 'Category',
    activeIcon: ColorFiltered(
      colorFilter: ColorFilter.mode(AppColors.primary, BlendMode.srcIn),
      child: Image(
        image: AssetImage(
          AppImages.iconProduct,
        ),
      ),
    ),
  ),
  const BottomNavigationBarItem(
    icon: Image(
      image: AssetImage(
        AppImages.iconPersonOutline,
      ),
    ),
    label: 'Setting',
    activeIcon: ColorFiltered(
      colorFilter: ColorFilter.mode(AppColors.primary, BlendMode.srcIn),
      child: Image(
        image: AssetImage(
          AppImages.iconPerson,
        ),
      ),
    ),
  ),
];

List<Widget> bottomNavScreens = const <Widget>[
  HomeScreenTestedScreen(),
  SearchScreen(),
  QrCodeMobileScannerScreen(),
  CategoryScreen(),
  SettingScreen(),
];

class BottomNavigationBarScreen extends StatelessWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BottomNavBarBloc, BottomNavBarState>(
      listener: (context, state) {},
      builder: (context, state) {
        void onItemTapped(int index) {
          if (index == 2) {
            // If the QR Code item is tapped
            context.goNamed('/qr-code');
          } else {
            BlocProvider.of<BottomNavBarBloc>(context)
                .add(TabChanged(tabIndex: index));
          }
        }

        return Scaffold(
          body: bottomNavScreens.elementAt(state.tabIndex),
          bottomNavigationBar: SizedBox(
            height: 90,
            child: BottomNavigationBar(
              items: bottomNavItems,
              currentIndex: state.tabIndex,
              selectedItemColor: AppColors.primary,
              unselectedItemColor: AppColors.black,
              showUnselectedLabels: false,
              selectedFontSize: 14,
              unselectedFontSize: 12,
              elevation: 3,
              type: BottomNavigationBarType.fixed,
              onTap: (index) {
                onItemTapped(index);
              },
            ),
          ),
          // floatingActionButtonLocation:
          //     FloatingActionButtonLocation.centerDocked,
          // floatingActionButton: FloatingActionButton(
          //   onPressed: () {},
          //   backgroundColor: AppColors.primary,
          //   shape: const CircleBorder(),
          //   child: const Image(
          //     image: AssetImage(AppImages.iconQrCodeOutline),
          //     color: AppColors.white,
          //     width: 24,
          //     height: 24,
          //   ),
          // ),
        );
      },
    );
  }
}
