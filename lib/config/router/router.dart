import 'package:fwms_rm_app/screens/home/home_screen.dart';
import 'package:fwms_rm_app/screens/sign_in/sign_in_screen.dart';
import 'package:go_router/go_router.dart';

class RouteName {
  static const String home = '/';
  static const String login = '/sign-in';

  static const publicRoutes = [
    login,
  ];
}

final router = GoRouter(
  redirect: (context, state) {
    if (RouteName.publicRoutes.contains(state.fullPath)) {
      return null;
    }
    //if user is not authenticated, redirect to login
    return RouteName.login;
  },
  routes: [
    GoRoute(
      path: RouteName.home,
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: RouteName.login,
      builder: (context, state) => SignInScreen(),
    ),
  ],
);
