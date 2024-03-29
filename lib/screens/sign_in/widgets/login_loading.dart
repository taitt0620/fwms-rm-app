import 'package:flutter/material.dart';

class LoginLoadingScreen extends StatelessWidget {
  const LoginLoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
