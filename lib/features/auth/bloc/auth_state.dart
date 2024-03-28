part of 'auth_bloc.dart';

sealed class AuthState {}

class AuthInitial extends AuthState {}

class AuthSigninInProgress extends AuthState {}

class AuthSigninSuccess extends AuthState {}

class AuthSigninFailure extends AuthState {
  final String message;

  AuthSigninFailure(this.message);
}
