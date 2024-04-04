import 'package:dio/dio.dart';
import 'package:fwms_rm_app/features/auth/dtos/sign_in_dto.dart';
import 'package:fwms_rm_app/features/auth/dtos/sign_in_success_dto.dart';

const String LOGIN_ENDPOINT = '/user/login';

class SignInException implements Exception {
  final String message;
  SignInException(this.message);
}

class AuthApiClient {
  AuthApiClient(this.dio);

  final Dio dio;

  Future<SignInSuccessDto> signIn(SignInDto signInDto) async {
    try {
      final response = await dio.post(
        LOGIN_ENDPOINT,
        data: {
          'username': signInDto.username,
          'password': signInDto.password,
        },
      );

      if (response.data != null) {
        return SignInSuccessDto.fromJson(response.data);
      } else {
        throw SignInException('Response data is null');
      }
    } on DioException catch (e) {
      if (e.response != null) {
        throw SignInException(e.response!.data['message']);
      } else {
        throw SignInException(e.message.toString());
      }
    }
  }
}
