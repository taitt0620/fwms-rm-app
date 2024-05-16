import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fwms_rm_app/features/auth/data/auth_repository.dart';
import 'package:fwms_rm_app/features/result_type.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;
  Timer? _timer;
  AuthBloc(this.authRepository) : super(AuthInitial()) {
    on<AuthStarted>(_onStarted);
    on<AuthSignInStarted>(_onSignInStarted);
    on<AuthAuthenticatedStarted>(_onAuthenticatedStarted);
    on<CheckTokenExpiration>(_onCheckTokenExpiration);
  }

  void _onStarted(AuthStarted event, Emitter<AuthState> emit) async {
    emit(AuthInitial());
  }

  void _onSignInStarted(
      AuthSignInStarted event, Emitter<AuthState> emit) async {
    emit(AuthSigninInProgress());
    final result = await authRepository.signIn(
        username: event.username, password: event.password);
    return (switch (result) {
      Success() => emit(AuthSigninSuccess()),
      Failure() => emit(AuthSigninFailure(result.message)),
    });
  }

  void _onAuthenticatedStarted(
      AuthAuthenticatedStarted event, Emitter<AuthState> emit) async {
    final result = await authRepository.getToken();
    return (switch (result) {
      Success(data: final token) when token != null =>
        emit(AuthAuthenticateSuccess(token)),
      Success() => emit(AuthAuthenticateUnauthenticated()),
      Failure() => emit(AuthAuthenticatedFailure(result.message)),
    });
  }

  void _onCheckTokenExpiration(
      CheckTokenExpiration event, Emitter<AuthState> emit) async {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(minutes: 1), (timer) async {
      var result = await authRepository.getToken();
      if (result is Success<String>) {
        var token = result.data;
        if (JwtDecoder.isExpired(token)) {
          emit(TokenExpired());
        }
      }
    });
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
