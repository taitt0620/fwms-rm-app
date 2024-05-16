import 'dart:developer';
import 'package:fwms_rm_app/features/auth/data/auth_api_client.dart';
import 'package:fwms_rm_app/features/auth/data/auth_local_data_source.dart';
import 'package:fwms_rm_app/features/auth/dtos/sign_in_dto.dart';
import 'package:fwms_rm_app/features/result_type.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

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

      await authLocalDataSource.saveToken(signInSuccessDto.data.tokenString);

      log('User details: id=${signInSuccessDto.data.id}, name=${signInSuccessDto.data.name}, role=${signInSuccessDto.data.role}');
      await authLocalDataSource.saveUser(signInSuccessDto.data.id,
          signInSuccessDto.data.name, signInSuccessDto.data.role);
      log('Expires in: ${signInSuccessDto.data.expiresInMilliseconds}');
      await authLocalDataSource.saveTokenExpirationTime(
          signInSuccessDto.data.expiresInMilliseconds);
        } on SignInException catch (e) {
      log('Sign in error: ${e.message}');
      return Failure('Sign in error: ${e.message}');
    } catch (e) {
      log('Unexpected error: $e');
      return Failure('Unexpected error: $e');
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

      if (JwtDecoder.isExpired(token)) {
        log('Token has expired');
        return Failure('Token has expired');
      } else {
        log('Token is still valid');
        return Success(token);
      }
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
