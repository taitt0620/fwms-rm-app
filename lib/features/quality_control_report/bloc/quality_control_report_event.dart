part of 'quality_control_report_bloc.dart';

@freezed
class QualityControlReportEvent with _$QualityControlReportEvent {
  const factory QualityControlReportEvent.started() = _Started;
  const factory QualityControlReportEvent.refresh() = _Refresh;
  const factory QualityControlReportEvent.loadMore() = _LoadMore;
}
