part of 'quality_control_report_detail_bloc.dart';

@freezed
class QualityControlReportDetailState with _$QualityControlReportDetailState {
  const factory QualityControlReportDetailState.initial() = _Initial;
  const factory QualityControlReportDetailState.loading() = _Loading;
  const factory QualityControlReportDetailState.loaded({
    required List<QualityControlReportDetail> qualityControlReportDetails,
  }) = _Loaded;
  const factory QualityControlReportDetailState.error(String? message) = _Error;
}
