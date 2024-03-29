import 'package:bloc/bloc.dart';
import 'package:fwms_rm_app/features/auth/data/auth_repository.dart';
import 'package:fwms_rm_app/features/result_type.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this.authRepository) : super(AuthInitial()) {
    on<AuthStarted>(_onStarted);
    on<AuthSignInStarted>(_onSignInStarted);
    on<AuthAuthenticatedStarted>(_onAuthenticatedStarted);
  }

  final AuthRepository authRepository;

  void _onStarted(AuthStarted event, Emitter<AuthState> emit) async {
    emit(AuthInitial());
  }

  void _onSignInStarted(
      AuthSignInStarted event, Emitter<AuthState> emit) async {
    emit(AuthSigninInProgress());
    await Future.delayed(Duration(seconds: 1));
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
      Success() => emit(AuthAuthenticatedSuccess(result.data)),
      Failure() => emit(AuthAuthenticatedFailure(result.message)),
    });
  }
}
