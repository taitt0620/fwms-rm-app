part of 'create_quality_control_report_bloc.dart';

@freezed
class CreateQualityControlReportEvent with _$CreateQualityControlReportEvent {
  const factory CreateQualityControlReportEvent.started() = _Started;
  const factory CreateQualityControlReportEvent.loadReport() = _LoadReport;
  const factory CreateQualityControlReportEvent.updateReport(
      {required RelateInformation ri,
      required CreateQualityControlReport? updatedReport}) = _UpdateReport;

  const factory CreateQualityControlReportEvent.updateItem({
    required int index,
    required QualityControlReportDetails item,
  }) = _UpdateItem;

  const factory CreateQualityControlReportEvent.updateInfomation(
      {required CreateQualityControlReport updatedInfo}) = _UpdateInformation;

  const factory CreateQualityControlReportEvent.createReport({
    required CreateQualityControlReport createdReport,
    required String requestId,
  }) = _CreateReport;
}
