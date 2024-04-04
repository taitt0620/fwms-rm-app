import 'dart:developer';

import 'package:fwms_rm_app/features/auth/data/auth_api_client.dart';
import 'package:fwms_rm_app/features/auth/data/auth_local_data_source.dart';
import 'package:fwms_rm_app/features/auth/dtos/sign_in_dto.dart';
import 'package:fwms_rm_app/features/result_type.dart';

class AuthRepository {
  final AuthApiClient authApiClient;
  final AuthLocalDataSource authLocalDataSource;

  AuthRepository({
    required this.authApiClient,
    required this.authLocalDataSource,
  });

  Future<Result<void>> signIn({
    required String username,
    required String password,
  }) async {
    try {
      final signInSuccessDto = await authApiClient
          .signIn(SignInDto(username: username, password: password));

      // ignore: unnecessary_null_comparison
      if (signInSuccessDto.data.tokenString != null) {
        await authLocalDataSource.saveToken(signInSuccessDto.data.tokenString);
      } else {
        throw SignInException('Token string is null');
      }
    } catch (e) {
      log('Sign in error: $e');
      return Failure('Sign in error: $e');
    }
    return Success(null);
  }

  Future<Result<String>> getToken() async {
    try {
      final token = await authLocalDataSource.getToken();
      if (token == null) {
        log('Token retrieval error: Token is null');
        return Failure('Token retrieval error: Token is null');
      }
      return Success(token);
    } catch (e) {
      log('Token retrieval error: $e');
      return Failure('Token retrieval error: $e');
    }
  }

  Future<Result<void>> signOut() async {
    try {
      await authLocalDataSource.deleteToken();
    } catch (e) {
      log('$e');
      return Failure('$e');
    }
    return Success(null);
  }
}

class SignInException implements Exception {
  final String message;
  SignInException(this.message);
}
