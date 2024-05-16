import 'package:dio/dio.dart';
import 'package:fwms_rm_app/features/quality_control_report/models/quality_control_report.dart';
import 'package:fwms_rm_app/features/quality_control_report_detail/models/quality_control_report_detail.dart';

class QualityControlReportApiClient {
  final Dio dio;

  QualityControlReportApiClient(this.dio);

  Future<List<QualityControlReport>> getQualityControlReports(
      {int pageIndex = 1, int pageSize = 10, required String token}) async {
    try {
      final response = await dio.get(
        '/QualityControlReport',
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
        final qualityControlReports =
            data.map((item) => QualityControlReport.fromJson(item)).toList();
        qualityControlReports
            .sort((a, b) => b.dateCreate.compareTo(a.dateCreate));
        return qualityControlReports;
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
