import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fwms_rm_app/features/quality_control_report/data/quality_control_report_repository.dart';
import 'package:fwms_rm_app/features/quality_control_report/models/quality_control_report.dart';
import 'package:fwms_rm_app/features/quality_control_report_detail/models/quality_control_report_detail.dart';

part 'quality_control_report_event.dart';
part 'quality_control_report_state.dart';
part 'quality_control_report_bloc.freezed.dart';

class QualityControlReportBloc
    extends Bloc<QualityControlReportEvent, QualityControlReportState> {
  final QualityControlReportRepository repo;

  int _currentPage = 0;
  bool _hasReachedMax = false;

  QualityControlReportBloc(this.repo) : super(const _Initial()) {
    on<_Started>(_onStarted);
    on<_Refresh>(_onRefreshStarted);
    on<_LoadMore>(_onLoadMoreStarted);
  }

  FutureOr<void> _onStarted(
      _Started event, Emitter<QualityControlReportState> emit) async {
    emit(const _Loading());
    try {
      _currentPage = 1;
      _hasReachedMax = false;
      final qualityControlReports = await repo.fetchQualityControlReports(
          pageIndex: _currentPage, pageSize: 10);
      if (qualityControlReports.isEmpty) {
        emit(const _Empty('No quality control reports found.'));
      }
      emit(_Loaded(
          qualityControlReports: qualityControlReports, hasReachedMax: false));
      _currentPage++;
    } catch (e) {
      emit(_Error(e.toString()));
    }
  }

  FutureOr<void> _onRefreshStarted(
      _Refresh event, Emitter<QualityControlReportState> emit) async {
    emit(const _Loading());
    try {
      _currentPage = 1;
      _hasReachedMax = false;
      final qualityControlReports = await repo.fetchQualityControlReports(
          pageIndex: _currentPage, pageSize: 10);
      emit(_Loaded(
          qualityControlReports: qualityControlReports, hasReachedMax: false));
      _currentPage++;
    } catch (e) {
      emit(_Error(e.toString()));
    }
  }

  FutureOr<void> _onLoadMoreStarted(
      _LoadMore event, Emitter<QualityControlReportState> emit) async {
    if (!_hasReachedMax) {
      emit(const _Loading());
      try {
        final qualityControlReports = await repo.fetchQualityControlReports(
            pageIndex: _currentPage, pageSize: 10);
        final hasReachedMax = qualityControlReports.length < 10;
        emit(_Loaded(
            qualityControlReports: qualityControlReports,
            hasReachedMax: hasReachedMax));
        if (!hasReachedMax) _currentPage++;
      } catch (e) {
        emit(_Error(e.toString()));
      }
    }
  }
}
