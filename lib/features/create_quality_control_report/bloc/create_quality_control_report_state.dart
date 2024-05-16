part of 'create_quality_control_report_bloc.dart';

@freezed
class CreateQualityControlReportState with _$CreateQualityControlReportState {
  const factory CreateQualityControlReportState.initial() = _Initial;
  const factory CreateQualityControlReportState.inProgress() = _InProgress;
  const factory CreateQualityControlReportState.success() = _Success;
  const factory CreateQualityControlReportState.failure(String? error) =
      _Failure;
  const factory CreateQualityControlReportState.reportUpdateInProgress() =
      _ReportUpdateInProgress;
  const factory CreateQualityControlReportState.reportUpdateSucess(
      CreateQualityControlReport? report) = _ReportUpdateSucess;
  const factory CreateQualityControlReportState.reportUpdateFailure(
      String? error) = _ReportUpdateFailure;
  const factory CreateQualityControlReportState.itemUpdateInProgress() =
      _ItemUpdateInProgress;
  const factory CreateQualityControlReportState.itemUpdateSucess(
      CreateQualityControlReport? report) = _ItemUpdateSucess;
  const factory CreateQualityControlReportState.itemUpdateFailure(
      String? error) = _ItemUpdateFailure; 

  const factory CreateQualityControlReportState.createReportInProgress() =  _CreateReportInProgress;
  const factory CreateQualityControlReportState.createReportSuccess() =  _CreateReportSuccess;
  const factory CreateQualityControlReportState.createReportFailure(String? error) =  _CreateReportFailure;
}
