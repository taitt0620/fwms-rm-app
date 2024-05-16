part of 'quality_control_report_bloc.dart';

@freezed
class QualityControlReportState with _$QualityControlReportState {
  const factory QualityControlReportState.initial() = _Initial;
  const factory QualityControlReportState.loading() = _Loading;
  const factory QualityControlReportState.loaded(
      {required List<QualityControlReport> qualityControlReports,
      required bool? hasReachedMax
      
}) = _Loaded;
  const factory QualityControlReportState.error(String? message) = _Error;
  const factory QualityControlReportState.empty(String? message) = _Empty;

  const factory QualityControlReportState.qualityControlReportDetailLoading() =
      _QualityControlReportDetailLoading;
  const factory QualityControlReportState.qualityControlReportDetailLoaded({
    required List<QualityControlReportDetail> qualityControlReportDetails,
  })= _QualityControlReportDetailLoaded;
  const factory QualityControlReportState.qualityControlReportDetailError(String? message) = _QualityControlReportDetailError;
}
