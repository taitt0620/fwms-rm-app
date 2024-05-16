part of 'auth_bloc.dart';

sealed class AuthState {}

class AuthInitial extends AuthState {}

class AuthSigninInProgress extends AuthState {}

class AuthSigninSuccess extends AuthState {}

class AuthSigninFailure extends AuthState {
  final String message;

  AuthSigninFailure(this.message);
}

class AuthAuthenticateSuccess extends AuthState {
  final String token;

  AuthAuthenticateSuccess(this.token);
}

class AuthAuthenticateUnauthenticated extends AuthState {}

class AuthAuthenticatedFailure extends AuthState {
  final String message;

  AuthAuthenticatedFailure(this.message);
}

class TokenExpired extends AuthState {}
