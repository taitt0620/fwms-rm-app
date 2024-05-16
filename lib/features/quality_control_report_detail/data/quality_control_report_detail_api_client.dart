import 'package:dio/dio.dart';
import 'package:fwms_rm_app/features/quality_control_report_detail/models/quality_control_report_detail.dart';

class QualityControlReportDetailApiClient {
  final Dio dio;

  QualityControlReportDetailApiClient(this.dio);

  Future<List<QualityControlReportDetail>> getQualityControlReportById(
      {required String id, required String token}) async {
    try {
      final response = await dio.get(
        '/QualityControlReport/$id/quantity-control-report-details',
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
        final data = response.data['data'] as List<dynamic>;
        return data
            .map((item) => QualityControlReportDetail.fromJson(item))
            .toList();
      } else {
        throw Exception('Failed to fetch quality control report');
      }
    } on DioException catch (e) {
      if (e.response != null) {
        throw Exception(e.response!.data['message']);
      } else {
        throw Exception(e.message);
      }
    }
  }
}