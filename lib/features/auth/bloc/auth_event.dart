part of 'auth_bloc.dart';

class AuthEvent {}

class AuthStarted extends AuthEvent {}

class AuthSignInStarted extends AuthEvent {
  AuthSignInStarted({required this.username, required this.password});

  final String username;
  final String password;
}

class AuthAuthenticatedStarted extends AuthEvent {}

class CheckTokenExpiration extends AuthEvent {}
