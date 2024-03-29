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
      await authLocalDataSource.saveToken(signInSuccessDto.data.tokenString);
    } catch (e) {
      log('$e');
      return Failure('$e');
    }
    return Success(null);
  }

  Future<Result<String>> getToken() async {
    try {
      final token = await authLocalDataSource.getToken();
      if (token == null) {
        log('$token');
        return Failure('Token is null');
      }
      return Success(token);
    } catch (e) {
      log('$e');
      return Failure('$e');
    }
  }
  // Future<Result<void>> signOut() async {
  //   try {
  //     await authLocalDataSource.deleteToken();
  //   } catch (e) {
  //     log('$e');
  //     return Failure('$e');
  //   }
  //   return Success(null);
  // }
}
