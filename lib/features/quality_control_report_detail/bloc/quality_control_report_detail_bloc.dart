import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fwms_rm_app/features/quality_control_report_detail/data/quality_control_report_detail_repository.dart';
import 'package:fwms_rm_app/features/quality_control_report_detail/models/quality_control_report_detail.dart';

part 'quality_control_report_detail_event.dart';
part 'quality_control_report_detail_state.dart';
part 'quality_control_report_detail_bloc.freezed.dart';

class QualityControlReportDetailBloc extends Bloc<QualityControlReportDetailEvent, QualityControlReportDetailState> {
  final QualityControlReportDetailRepository repo;
  QualityControlReportDetailBloc(this.repo) : super(const _Initial()) {
    on<_Started>(_onStarted);
    on<_FetchQualityControlReportDetail>(
        _onFetchQualityControlReportDetailStarted);
  }

  FutureOr<void> _onStarted (_Started event, Emitter<QualityControlReportDetailState> emit) async {
    emit(const _Initial());
  }
  
  FutureOr<void> _onFetchQualityControlReportDetailStarted(
      _FetchQualityControlReportDetail event,
      Emitter<QualityControlReportDetailState> emit) async {
    emit(const _Loading());
    try {
      final qualityControlReportDetails =
          await repo.fetchQualityControlReportById(id: event.id);
      emit(_Loaded(
          qualityControlReportDetails: qualityControlReportDetails));
    } catch (e) {
      emit(_Error(e.toString()));
    }
  }
}
