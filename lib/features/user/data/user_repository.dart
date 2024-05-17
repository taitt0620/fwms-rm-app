import 'package:fwms_rm_app/features/auth/data/auth_local_data_source.dart';
import 'package:fwms_rm_app/features/user/data/user_api_client.dart';
import 'package:fwms_rm_app/features/user/models/update_user.dart';
import 'package:fwms_rm_app/features/user/models/user.dart';
import 'package:fwms_rm_app/features/user/models/user_detail.dart';
import 'package:image_picker/image_picker.dart';

class UserRepository {
  final UserApiClient apiClient;
  final AuthLocalDataSource authLocalDataSource;

  UserRepository({required this.apiClient, required this.authLocalDataSource});

  Future<List<User>> getUsers({required int pageIndex, required pageSize}) async {
    try {
      final token = await authLocalDataSource.getToken();
      if (token == null) {
        throw Exception('Token is null');
      }
      return await apiClient.getUsers(pageIndex: pageIndex, pageSize: pageSize,token: token);
    } catch (e) {
      throw Exception('Failed to fetch users');
    }
  }

  Future<UserDetail> getUserById() async {
    try {
      final token = await authLocalDataSource.getToken();
      if (token == null) {
        throw Exception('Token is null');
      }
      final id = await authLocalDataSource.getUserId();
      if (id == null) {
        throw Exception('Id is null');
      }
      return await apiClient.getUserById(id: id, token: token);
    } catch (e) {
      throw Exception('Failed to fetch user');
    }
  }

  Future<void> uploadProfileImage({required XFile image}) async {
    try {
      final token = await authLocalDataSource.getToken();
      if (token == null) {
        throw Exception('Token is null');
      }
      return await apiClient.uploadProfileImage(token: token, image: image);
    } catch (e) {
      throw Exception('Failed to upload image');
    }
  }

  Future<void> updateUser(UpdateUser user) async {
    try {
      final token = await authLocalDataSource.getToken();
      if (token == null) {
        throw Exception('Token is null');
      }
      return await apiClient.updateUser(token: token, updatedUser: user);
    } catch (e) {
      throw Exception('Failed to update user');
    }
  }
}
