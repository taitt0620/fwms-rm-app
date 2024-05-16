part of 'quality_control_report_detail_bloc.dart';

@freezed
class QualityControlReportDetailEvent with _$QualityControlReportDetailEvent {
  const factory QualityControlReportDetailEvent.started() = _Started;


  const factory QualityControlReportDetailEvent.fetchQualityControlReportDetail(
      {required String id}) = _FetchQualityControlReportDetail;
}