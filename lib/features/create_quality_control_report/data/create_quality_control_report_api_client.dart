import 'package:dio/dio.dart';
import 'package:fwms_rm_app/features/create_quality_control_report/models/create_quality_control_report.dart';

class CreateQualityControlReportApiClient {
  final Dio dio;

  CreateQualityControlReportApiClient(this.dio);

  Future<void> createReport({
      required CreateQualityControlReport report,
      required String token,
      required String requestId,
    }) async {
      try {
        final response = await dio.post(
          '/QualityControlReport/$requestId/request',
          data: report.toJson(),
          options: Options(headers: {
            'Authorization': 'Bearer $token',
          }),
        );
        if (response.statusCode != 200 && response.statusCode != 400) {
          throw Exception('Failed to create report');
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
