import 'package:fwms_rm_app/features/auth/data/auth_local_data_source.dart';
import 'package:fwms_rm_app/features/quality_control_report_detail/data/quality_control_report_detail_api_client.dart';
import 'package:fwms_rm_app/features/quality_control_report_detail/models/quality_control_report_detail.dart';

class QualityControlReportDetailRepository {
  final QualityControlReportDetailApiClient apiClient;
  final AuthLocalDataSource authLocalDataSource;

  QualityControlReportDetailRepository({required this.apiClient, required this.authLocalDataSource});

  Future<List<QualityControlReportDetail>> fetchQualityControlReportById(
      {required String id}) async {
    try {
      final token = await authLocalDataSource.getToken();
      if (token == null) {
        throw Exception('Token is null');
      }
      final qualityControlReportDetail =
          await apiClient.getQualityControlReportById(id: id, token: token);
      return qualityControlReportDetail;
    } catch (e) {
      throw Exception(e);
    }
  }
}