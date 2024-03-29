import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fwms_rm_app/config/router/router.dart';
import 'package:fwms_rm_app/config/theme/app_pallete.dart';
import 'package:fwms_rm_app/features/auth/bloc/auth_bloc.dart';
import 'package:fwms_rm_app/screens/sign_in/widgets/auth_field.dart';
import 'package:go_router/go_router.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _handleSignIn(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      context.read<AuthBloc>().add(
            AuthSignInStarted(
              username: _usernameController.text,
              password: _passwordController.text,
            ),
          );
    }
  }

  void _handleRetry(BuildContext context) {
    context.read<AuthBloc>().add(AuthStarted());
  }

  Widget _buildInitialLoginWidget() {
    _formKey.currentState?.validate();
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome back!',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 0),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
          ),
          SizedBox(height: 20),
          AuthField(
            labelText: 'Username',
            prefixIcon: SvgPicture.asset(
              'assets/icons/icons8-zalando.svg',
              width: 24,
              height: 24,
              color: AppPallete.greyColor,
            ),
            controller: _usernameController,
          ),
          SizedBox(height: 10),
          AuthField(
            labelText: 'Password',
            prefixIcon: SvgPicture.asset(
              'assets/icons/icons8-password.svg',
              width: 24,
              height: 24,
              color: AppPallete.greyColor,
            ),
            controller: _passwordController,
            obscureText: true,
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              RichText(
                text: TextSpan(
                  text: 'Forgot your password? ',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: AppPallete.blueColor,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          ElevatedButton(
            child: Text('Retry'),
            onPressed: () {
              _handleRetry(context);
            },
          ),
          SizedBox(height: 20),
          Center(
            child: RichText(
              text: TextSpan(
                text: 'Already have an account? ',
                style: Theme.of(context).textTheme.titleMedium,
                children: [
                  TextSpan(
                    text: 'Contact us',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: AppPallete.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInProgressLoginWidget() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildFailureSigninWidget(String message) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          message,
          style: TextStyle(
            color: AppPallete.errorColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          child: Text('Retry'),
          onPressed: () {
            _handleRetry(context);
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final authState = context.watch<AuthBloc>().state;

    var loginWidget = (switch (authState) {
      AuthInitial() => _buildInitialLoginWidget(),
      AuthSigninInProgress() => _buildInProgressLoginWidget(),
      AuthSigninFailure() => _buildFailureSigninWidget(authState.message),
      AuthSigninSuccess() => Container(
          child: Center(
            child: Text('2'),
          ),
        ),
      _ => _buildInitialLoginWidget(),
    });

    loginWidget = BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          switch (state) {
            case AuthSigninSuccess():
              context.read<AuthBloc>().add(AuthAuthenticatedStarted());
              break;
            case AuthAuthenticatedSuccess():
              context.go(RouteName.home);
              break;
            default:
          }
        },
        child: loginWidget);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 300,
              height: 300,
            ),
            Padding(
              padding: EdgeInsets.only(left: 48, right: 48),
              child: loginWidget,
            ),
          ],
        ),
      ),
    );
  }
}
