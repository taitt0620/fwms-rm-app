import 'package:dio/dio.dart';
import 'package:fwms_rm_app/features/auth/dtos/sign_in_dto.dart';
import 'package:fwms_rm_app/features/auth/dtos/sign_in_success_dto.dart';

class AuthApiClient {
  AuthApiClient(this.dio);

  final Dio dio;

  Future<SignInSuccessDto> signIn(SignInDto signInDto) async {
    try {
      final response = await dio.post(
        '/user/login',
        data: {
          'username': signInDto.username,
          'password': signInDto.password,
        },
      );
      return SignInSuccessDto.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response != null) {
        throw Exception(e.response!.data['message']);
      } else {
        throw Exception(e.message);
      }
    }
  }
}
