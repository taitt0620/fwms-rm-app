import 'package:fwms_rm_app/features/auth/data/auth_local_data_source.dart';
import 'package:fwms_rm_app/features/request/data/request_api_client.dart';
import 'package:fwms_rm_app/features/request/dtos/request_dto.dart';

class RequestRepository {
  final RequestApiClient requestApiClient;
  final AuthLocalDataSource authLocalDataSource;

  RequestRepository(
      {required this.requestApiClient, required this.authLocalDataSource});

  Future<List<RequestDto>> fetchRequests() async {
    try {
      final token = await authLocalDataSource.getToken();
      if (token == null) {
        throw Exception('Token is null');
      }

      final requests = await requestApiClient.fetchRequests(token);
      return requests;
    } catch (e) {
      throw Exception('Error fetching requests: $e');
    }
  }
}
