import 'package:dio/dio.dart';
import 'package:fwms_rm_app/features/request/models/relate_information.dart';
import 'package:fwms_rm_app/features/request/models/request.dart';

class RequestApiClient {
  final Dio dio;

  RequestApiClient(this.dio);
  final List<String> requestStatus = [];
  final List<String> requestTitle = [];
  Future<List<Request>> fetchRequests(
      {int pageIndex = 1, int pageSize = 10, required String token}) async {
    try {
      final response = await dio.get(
        '/request',
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
        return data
            .map((item) => Request.fromJson(item))
            // .where((request) => allowedStatuses.contains(request.status))
            .toList();
      } else {
        throw Exception('Failed to fetch requests');
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

  Future<List<String>> getAllStatusRequest({required String token}) async {
    try {
      final response = await dio.get(
        '/request',
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
      );
      if (response.statusCode == 200) {
        final data = response.data['data']['pagingData'] as List<dynamic>;
        List<Request> requests =
            data.map((item) => Request.fromJson(item)).toList();

        requestStatus.addAll(
          requests
              .map((request) => request.status)
              .toSet() // Convert to Set to get unique values
              .toList(),
        );
        requestStatus.insert(0, 'All');
        return requestStatus;
      } else {
        throw Exception('Failed to fetch requests');
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

  Future<List<Request>> getRequestsByStatuses(
      {required List<String> statuses, required String token}) async {
    try {
      final response = await dio.get(
        '/request',
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
      );
      if (response.statusCode == 200) {
        final data = response.data['data']['pagingData'] as List<dynamic>?;
        if (data != null) {
          final requests = data
              .map((json) => Request.fromJson(json))
              .where((request) => statuses.contains(request.status))
              .toList();
          requests.sort((a, b) => b.dateCreate.compareTo(a.dateCreate));
          return requests;
        } else {
          return [];
        }
      } else {
        throw Exception('Failed to load requests by statuses');
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

  Future<List<Request>> getRequestsByStatusAndTitle({
    required String token,
    required String status,
    required String title,
  }) async {
    try {
      final response = await dio.get(
        '/request',
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
      );
      if (response.statusCode == 200) {
        final data = response.data['data']['pagingData'] as List<dynamic>;
        return data
            .map((json) => Request.fromJson(json))
            .where(
                (request) => request.status == status && request.title == title)
            .toList();
      } else {
        throw Exception('Failed to fetch requests');
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

  Future<List<RelateInformation>> fetchRelateInformation(
      {required String requestId,
      required String poCode,
      required String token}) async {
    try {
      final response = await dio.get(
        '/request/$requestId/relate-infomation/$poCode',
        queryParameters: {
          'requestId': requestId, // 'requestId' should be 'requestID'
          'poCode': poCode,
        },
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
      );

      if (response.statusCode == 200) {
        final data = response.data['data'] as List<dynamic>;
        return data.map((item) => RelateInformation.fromJson(item)).toList();
      } else {
        throw Exception('Failed to fetch relate information');
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
