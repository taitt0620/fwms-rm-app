import 'package:fwms_rm_app/features/auth/data/auth_local_data_source.dart';
import 'package:fwms_rm_app/features/quality_control_report/data/quality_control_report_api_client.dart';
import 'package:fwms_rm_app/features/quality_control_report/models/quality_control_report.dart';
import 'package:fwms_rm_app/features/quality_control_report_detail/models/quality_control_report_detail.dart';

class QualityControlReportRepository {
  final QualityControlReportApiClient apiClient;
  final AuthLocalDataSource authLocalDataSource;

  QualityControlReportRepository(
      {required this.apiClient, required this.authLocalDataSource});

  Future<List<QualityControlReport>> fetchQualityControlReports(
      {required int pageIndex, required int pageSize}) async {
    try {
      final token = await authLocalDataSource.getToken();
      if (token == null) {
        throw Exception('Token is null');
      }
      final qualityControlReport = await apiClient.getQualityControlReports(
          pageIndex: pageIndex, pageSize: pageSize, token: token);
      return qualityControlReport;
    } catch (e) {
      throw Exception(e);
    }
  }

  
}
