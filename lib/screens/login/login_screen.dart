import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fwms_rm_app/common/styles/spacing_styles.dart';
import 'package:fwms_rm_app/config/router/router.dart';
import 'package:fwms_rm_app/features/auth/bloc/auth_bloc.dart';
import 'package:fwms_rm_app/screens/login/widgets/login_failure.dart';
import 'package:fwms_rm_app/screens/login/widgets/login_form.dart';
import 'package:fwms_rm_app/screens/login/widgets/login_header.dart';
import 'package:fwms_rm_app/screens/login/widgets/login_loading.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final authState = context.watch<AuthBloc>().state;

    var loginWidget = (switch (authState) {
      AuthInitial() => const LoginForm(),
      AuthAuthenticateUnauthenticated() => const LoginForm(),
      AuthSigninInProgress() => const LoginLoadingScreen(),
      AuthSigninFailure() => LoginFailureScreen(message: authState.message),
      AuthSigninSuccess() => Container(),
      _ => const LoginForm(),
    });

    loginWidget = BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          switch (state) {
            case AuthSigninSuccess():
              context.read<AuthBloc>().add(AuthAuthenticatedStarted());
              break;
            case AuthAuthenticateSuccess():
              context.go(RouteName.bottomNavBar);
              break;
            case AuthAuthenticatedFailure():
              context.go(RouteName.login);
              break;
            default:
          }
        },
        child: loginWidget);
    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Padding(
          padding: CustomSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //Logo, Title and Slogan
              const loginHeader(),

              //Form
              loginWidget
            ],
          ),
        ),
      ),
    );
  }
}
