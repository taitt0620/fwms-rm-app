import 'package:dio/dio.dart';
import 'package:fwms_rm_app/features/user/models/update_user.dart';
import 'package:fwms_rm_app/features/user/models/user.dart';
import 'package:fwms_rm_app/features/user/models/user_detail.dart';
import 'package:image_picker/image_picker.dart';

class UserApiClient {
  final Dio dio;

  UserApiClient(this.dio);

  Future<List<User>> getUsers({int pageIndex = 1, int pageSize = 10,required String token}) async {
    try {
      final response = await dio.get(
        '/user',
        queryParameters: {
          'pageIndex': pageIndex,
          'pageSize': pageSize,
        },
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
      );
      if (response.statusCode == 200) {
        final data = response.data['data']['pagingData'] as List<dynamic>;
        return data.map((e) => User.fromJson(e)).toList();
      } else {
        throw Exception('Failed to fetch users');
      }
    } on DioException catch (e) {
      if (e.response != null) {
        throw DioException(
          requestOptions: e.requestOptions,
          error: e.response!.data['message'],
        );
      } else {
        throw DioException(
          requestOptions: e.requestOptions,
          error: e.message,
        );
      }
    }
  }

  Future<UserDetail> getUserById(
      {required String id, required String token}) async {
    try {
      final response = await dio.get(
        '/user/$id',
        queryParameters: {
          'id': id,
        },
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return UserDetail.fromJson(response.data['data']);
      } else {
        throw Exception('Failed to fetch user');
      }
    } on DioException catch (e) {
      if (e.response != null) {
        throw DioException(
          requestOptions: e.requestOptions,
          error: e.response!.data['message'],
        );
      } else {
        throw DioException(
          requestOptions: e.requestOptions,
          error: e.message,
        );
      }
    }
  }

  Future<void> uploadProfileImage(
      {required String token, required XFile image}) async {
    try {
      final response = await dio.put(
        '/user/upload-image-profile',
        data: FormData.fromMap(
          {
            'image': await MultipartFile.fromFile(image.path),
          },
        ),
        options: Options(
          headers: {'Authorization': 'Bearer $token'},
        ),
      );
      if (response.statusCode == 200) {
        return;
      } else {
        throw Exception('Failed to upload image');
      }
    } on DioException catch (e) {
      if (e.response != null) {
        throw DioException(
          requestOptions: e.requestOptions,
          error: e.response!.data['message'],
        );
      } else {
        throw DioException(
          requestOptions: e.requestOptions,
          error: e.message,
        );
      }
    }
  }

  Future<void> updateUser(
      {required UpdateUser updatedUser, required String token}) async {
    try {
      final response = await dio.put(
        '/user/update-profile',
        data: updatedUser.toJson(),
        options: Options(
          headers: {'Authorization': 'Bearer $token'},
        ),
      );
      if (response.statusCode == 200) {
        return;
      } else {
        throw Exception('Failed to update user');
      }
    } on DioException catch (e) {
      if (e.response != null) {
        throw DioException(
          requestOptions: e.requestOptions,
          error: e.response!.data['message'],
        );
      } else {
        throw DioException(
          requestOptions: e.requestOptions,
          error: e.message,
        );
      }
    }
  }
}
