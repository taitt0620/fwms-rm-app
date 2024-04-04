import 'package:dio/dio.dart';
import 'package:fwms_rm_app/features/request/dtos/request_dto.dart';

class RequestApiClient {
  final Dio dio;
  RequestApiClient(this.dio);

  Future<List<RequestDto>> fetchRequests(String token) async {
    try {
      Response<Map<String, dynamic>> response = await dio.get(
        '/request',
        queryParameters: {
          'pageSize': 50,
        },
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
      );

      if (response.data == null ||
          response.data!['data'] == null ||
          response.data!['data']['pagingData'] == null) {
        throw DioException(
          requestOptions: RequestOptions(path: '/request'),
          error: 'Invalid response data',
        );
      }

      List<Map<String, dynamic>> requestsData =
          List<Map<String, dynamic>>.from(response.data!['data']['pagingData']);

      return requestsData.map((e) => RequestDto.fromJson(e)).toList();
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
