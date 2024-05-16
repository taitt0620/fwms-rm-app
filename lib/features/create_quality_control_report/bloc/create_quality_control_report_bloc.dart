import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fwms_rm_app/features/create_quality_control_report/data/create_quality_control_report_repository.dart';
import 'package:fwms_rm_app/features/create_quality_control_report/models/create_quality_control_report.dart';
import 'package:fwms_rm_app/features/request/models/relate_information.dart';

part 'create_quality_control_report_event.dart';
part 'create_quality_control_report_state.dart';
part 'create_quality_control_report_bloc.freezed.dart';

class CreateQualityControlReportBloc extends Bloc<
    CreateQualityControlReportEvent, CreateQualityControlReportState> {
  final CreateQualityControlReportRepository repo;
  CreateQualityControlReportBloc(this.repo) : super(const _Initial()) {
    on<_Started>(_onStarted);
    on<_UpdateReport>(_onUpdateReportStarted);
    on<_LoadReport>(_onLoadReportStarted);
    on<_UpdateItem>(_onUpdateItemStarted);
    on<_UpdateInformation>(_onUpdateInformationStarted);
    on<_CreateReport>(_onCreateReportStarted);
  }

  FutureOr<void> _onStarted(CreateQualityControlReportEvent event,
      Emitter<CreateQualityControlReportState> emit) {
    emit(const _Initial());
  }

  FutureOr<void> _onUpdateReportStarted(_UpdateReport event,
      Emitter<CreateQualityControlReportState> emit) async {
    emit(const _ReportUpdateInProgress());
    try {
      final updatedItem = await repo
          .mapRelateInformationToReport(ri: event.ri)
          .then((_) => repo.getReport());
      emit(_ReportUpdateSucess(updatedItem));
    } catch (e) {
      emit(_ReportUpdateFailure(e.toString()));
    }
  }

  FutureOr<void> _onLoadReportStarted(
      _LoadReport event, Emitter<CreateQualityControlReportState> emit) async {
    emit(const _ReportUpdateInProgress());
    try {
      final report = await repo.getReport();
      emit(_ReportUpdateSucess(report));
    } catch (e) {
      emit(_ReportUpdateFailure(e.toString()));
    }
  }

  FutureOr<void> _onUpdateItemStarted(
      _UpdateItem event, Emitter<CreateQualityControlReportState> emit) async {
    emit(const _ItemUpdateInProgress());
    try {
      if (event.item == null) {
        emit(_ItemUpdateFailure('Item is null'));
      }
      final updatedItem =
          await repo.updateItem(index: event.index, item: event.item);
      emit(_ItemUpdateSucess(updatedItem));
    } catch (e) {
      emit(_ItemUpdateFailure(e.toString()));
    }
  }

  FutureOr<void> _onUpdateInformationStarted(_UpdateInformation event,
      Emitter<CreateQualityControlReportState> emit) async {
    emit(const _ItemUpdateInProgress());
    try {
      if (event.updatedInfo == null) {
        emit(_ItemUpdateFailure('Updated information is null'));
      }
      final updatedInfo =
          await repo.updateInfomation(updatedInfo: event.updatedInfo);
      emit(_ItemUpdateSucess(updatedInfo));
    } catch (e) {
      emit(_ItemUpdateFailure(e.toString()));
    }
  }

  FutureOr<void> _onCreateReportStarted(_CreateReport event,
      Emitter<CreateQualityControlReportState> emit) async {
    emit(const _CreateReportInProgress());
    try {
      await repo.createReport(
          createdReport: event.createdReport, requestId: event.requestId);
      emit(const _CreateReportSuccess());
    } catch (e) {
      emit(_CreateReportFailure(e.toString()));
    }
  }
}
