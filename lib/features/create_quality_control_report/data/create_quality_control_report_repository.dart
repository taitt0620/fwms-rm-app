import 'package:flutter/material.dart';
import 'package:fwms_rm_app/features/auth/data/auth_local_data_source.dart';
import 'package:fwms_rm_app/features/create_quality_control_report/data/create_quality_control_report_api_client.dart';
import 'package:fwms_rm_app/features/create_quality_control_report/data/qcr_local_data_source.dart';
import 'package:fwms_rm_app/features/create_quality_control_report/models/create_quality_control_report.dart';
import 'package:fwms_rm_app/features/request/models/relate_information.dart';

class CreateQualityControlReportRepository {
  final QualityControlReportLocalDataSource localDataSource;
  final AuthLocalDataSource authLocalDataSource;
  final CreateQualityControlReportApiClient apiClient;
  CreateQualityControlReportRepository(
      {required this.localDataSource,
      required this.authLocalDataSource,
      required this.apiClient});

  Future<CreateQualityControlReport> mapRelateInformationToReport(
      {required RelateInformation ri}) async {
    CreateQualityControlReport report = CreateQualityControlReport(
      uri: "string",
      poCode: ri.poCode,
      poFax: "",
      supplier: "",
      licensePlate: "",
      inspectionDate: DateTime.now(),
      receiptDate: DateTime.now(),
      phase: ri.phase,
      conclude: 0,
      comments: ri.notes,
      qualityControlReportDetails: ri.listDetails
          .map((detail) => QualityControlReportDetails(
                materialName: detail.materialName,
                quantity: detail.quantity,
                unit: detail.unit,
                numberOfChecks: 0,
                size: "",
                method: "",
                quantitative: "",
                externalInspection: "",
                quantityAchieved: 0,
                quantityNotReached: 0,
              ))
          .toList(),
    );
    await localDataSource.saveReport(report);
    return report;
  }

  Future<CreateQualityControlReport> getReport() async {
    return await localDataSource.getReport();
  }

  Future<CreateQualityControlReport> updateItem(
      {required int index, required QualityControlReportDetails item}) async {
    CreateQualityControlReport currentReport = await localDataSource
        .getReport(); // Replace with your method to get the current report
    debugPrint('currentReport: $currentReport');
    // Create a new list from the current report's details
    List<QualityControlReportDetails> newList =
        List<QualityControlReportDetails>.from(
            currentReport.qualityControlReportDetails);

    // Replace the item at the given index
    newList[index] = item;
    debugPrint('newList: ${newList[index]}');
    // Create a new report with the updated list
    CreateQualityControlReport updatedReport =
        currentReport.copyWith(qualityControlReportDetails: newList);

    // Save the updated report
    // Replace with your method to save the report
    await localDataSource.saveReport(updatedReport);

    // Return the updated report
    return updatedReport;
  }

  Future<CreateQualityControlReport> updateInfomation(
      {required CreateQualityControlReport updatedInfo}) async {
    CreateQualityControlReport currentReport = await localDataSource
        .getReport(); // Replace with your method to get the current report
    debugPrint('currentReport: $currentReport');
    CreateQualityControlReport updatedReport = currentReport.copyWith(
      poFax: updatedInfo.poFax ?? currentReport.poFax,
      supplier: updatedInfo.supplier ?? currentReport.supplier,
      licensePlate: updatedInfo.licensePlate ?? currentReport.licensePlate,
      inspectionDate:
          updatedInfo.inspectionDate ?? currentReport.inspectionDate,
      receiptDate: updatedInfo.receiptDate ?? currentReport.receiptDate,
      phase: updatedInfo.phase ?? currentReport.phase,
      conclude: updatedInfo.conclude ?? currentReport.conclude,
      comments: updatedInfo.comments ?? currentReport.comments,
    );
    // Save the updated report
    await localDataSource.saveReport(updatedReport);

    return updatedReport;
  }

  Future<void> createReport(
      {required CreateQualityControlReport createdReport,
      required String requestId}) async {
    try {
      final token = await authLocalDataSource.getToken();
      final report = await apiClient.createReport(
          report: createdReport, token: token!, requestId: requestId);
          return report;
    } on Exception catch (e) {
      throw Exception(e.toString());
    }
  }
}
