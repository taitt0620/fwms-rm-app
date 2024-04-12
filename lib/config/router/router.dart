import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fwms_rm_app/features/auth/bloc/auth_bloc.dart';
import 'package:fwms_rm_app/features/bottom_navigation_bar/bloc/bottom_nav_bar_bloc.dart';
import 'package:fwms_rm_app/screens/bottom_navigation_bar/bottom_navigation_bar_screen.dart';
import 'package:fwms_rm_app/screens/home/home_screen.dart';
import 'package:fwms_rm_app/screens/purchase_order_detail/purchase_order_detail_screen.dart';
import 'package:fwms_rm_app/screens/request/request_screen.dart';
import 'package:fwms_rm_app/screens/sign_in/login_screen.dart';
import 'package:go_router/go_router.dart';

class RouteName {
  static const String bottomNavBar = '/';
  static const String home = '/home';
  static const String login = '/sign-in';
  static const String request = '/request';
  static const String requestDetail = '/request/:id';
  static const String requestCreate = '/request/create';
  static const String purchaseOderDetail = '/purchase-order-detail/:id';
  static const String qualityReport = '/quality-report';
  static const String qualityReportDetail = '/quality-report/:id';

  static const publicRoutes = [
    login,
  ];
}

final BottomNavBarBloc bottomNavBarBloc = BottomNavBarBloc();
final router = GoRouter(
  redirect: (context, state) {
    if (RouteName.publicRoutes.contains(state.fullPath)) {
      return null;
    }
    if (context.read<AuthBloc>().state is AuthAuthenticatedSuccess) {
      return null;
    }
    return RouteName.login;
  },
  routes: [
    GoRoute(
      path: RouteName.bottomNavBar,
      builder: (context, state) => BlocProvider<BottomNavBarBloc>.value(
        value: bottomNavBarBloc,
        child: BottomNavigationBarScreen(),
      ),
    ),
    GoRoute(
      path: RouteName.home,
      name: 'home',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: RouteName.login,
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: RouteName.purchaseOderDetail,
      name: 'purchase-order-detail',
      builder: (context, state) {
        final id = state.pathParameters['id'];
        if (id == null) {
          // Handle the case where id is not present in the route.
          return Container();
        }
        return PurchaseOrderDetailScreen(id: id);
      },
    ),
    GoRoute(
      path: RouteName.request,
      builder: (context, state) => RequestScreen(),
    )
  ],
);
