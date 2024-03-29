import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fwms_rm_app/features/auth/bloc/auth_bloc.dart';
import 'package:fwms_rm_app/utils/constants/text_strings.dart';

class LoginFailureScreen extends StatelessWidget {
  const LoginFailureScreen({super.key, required this.message});
  final String message;

  void _handleRetry(BuildContext context) {
    context.read<AuthBloc>().add(AuthStarted());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          message,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            _handleRetry(context);
          },
          child: Text(AppTexts.retryButtonTitle),
        ),
      ],
    );
  }
}
