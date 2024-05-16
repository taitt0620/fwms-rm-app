import 'package:fwms_rm_app/features/auth/data/auth_local_data_source.dart';
import 'package:fwms_rm_app/features/request/data/request_api_client.dart';
import 'package:fwms_rm_app/features/request/models/relate_information.dart';
import 'package:fwms_rm_app/features/request/models/request.dart';

class RequestRepository {
  final RequestApiClient apiClient;
  final AuthLocalDataSource authLocalDataSource;

  RequestRepository(
      {required this.apiClient, required this.authLocalDataSource});

  Future<List<Request>> fetchRequests(
      {required int pageIndex, required int pageSize}) async {
    try {
      final token = await authLocalDataSource.getToken();
      if (token == null) {
        throw Exception('Token is null');
      }

      final requests = await apiClient.fetchRequests(
          pageIndex: pageIndex, pageSize: pageSize, token: token);
      return requests;
    } catch (e) {
      throw Exception('Error fetching requests: $e');
    }
  }

  Future<List<String>> getAllRequestStatuses() async {
    try {
      final token = await authLocalDataSource.getToken();
      if (token == null) {
        throw Exception('Token is null');
      }
      final result = await apiClient.getAllStatusRequest(token: token);
      return result;
    } catch (e) {
      throw Exception('Failed to fetch request statuses');
    }
  }

  Future<List<Request>> getRequestsByStatuses(List<String> statuses) async {
    final token = await authLocalDataSource.getToken();
    if (token == null) {
      throw Exception('Token is null');
    }
    try {
      final result = await apiClient.getRequestsByStatuses(
          statuses: statuses, token: token);
      return result;
    } catch (e) {
      throw Exception('Failed to fetch requests by statuses');
    }
  }

  Future<List<Request>> getRequestsByStatusAndTitle({
    required String status,
    required String title,
  }) async {
    final token = await authLocalDataSource.getToken();
    if (token == null) {
      throw Exception('Token is null');
    }
    try {
      final result = await apiClient.getRequestsByStatusAndTitle(
          status: status, title: title, token: token);
      return result;
    } catch (e) {
      throw Exception('Failed to fetch requests by status and title');
    }
  }

  Future<List<RelateInformation>> fetchRelateInformation(
      {required requestId, required poCode}) async {
    try {
      final token = await authLocalDataSource.getToken();
      if (token == null) {
        throw Exception('Token is null');
      }
      final relateInformation = await apiClient.fetchRelateInformation(
          requestId: requestId, poCode: poCode, token: token);
      return relateInformation;
    } catch (e) {
      throw Exception('Error fetching relate information: $e');
    }
  }
}
