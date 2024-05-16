import 'dart:convert';

import 'package:fwms_rm_app/features/create_quality_control_report/data/qcr_constants.dart';
import 'package:fwms_rm_app/features/create_quality_control_report/models/create_quality_control_report.dart';
import 'package:shared_preferences/shared_preferences.dart';

class QualityControlReportLocalDataSource {
  final SharedPreferences sharedPreferences;

  QualityControlReportLocalDataSource(this.sharedPreferences);

  Future<void> saveReport(CreateQualityControlReport report) async {
    String jsonString = jsonEncode(report.toJson());
    final string = await sharedPreferences.setString(
        CreateQualityControlReportDataConstants.report, jsonString);
  }

  Future<CreateQualityControlReport> getReport() async {
    String? jsonString = sharedPreferences
        .getString(CreateQualityControlReportDataConstants.report);
    if (jsonString != null) {
      final createQualityControlReport =
          CreateQualityControlReport.fromJson(jsonDecode(jsonString));

      return createQualityControlReport;
    } else {
      throw Exception('Report not found');
    }
  }
}
