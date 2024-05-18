import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fwms_rm_app/features/create_good_receipt_note/data/create_good_receipt_note_repository.dart';
import 'package:fwms_rm_app/features/create_good_receipt_note/models/create_good_receipt_note.dart';
import 'package:fwms_rm_app/features/qr-scan/models/qr_code_data.dart';
import 'package:fwms_rm_app/features/quality_control_report_detail/models/quality_control_report_detail.dart';

part 'create_good_receipt_note_event.dart';
part 'create_good_receipt_note_state.dart';
part 'create_good_receipt_note_bloc.freezed.dart';

class CreateGoodReceiptNoteBloc extends Bloc<CreateGoodReceiptNoteEvent, CreateGoodReceiptNoteState> {
  final CreateGoodReceiptNoteRepository repo;
  CreateGoodReceiptNoteBloc(this.repo) : super(const _Initial()) {
    on<_Started>(_onStarted);
    on<_CreateGoodReceiptNote>(_onCreateGoodReceiptNoteStarted);
    on<_AddGoodReceiptNoteDetail>(_onAddGoodReceiptNoteDetailStarted);
  }

  FutureOr<void> _onStarted(_Started event, Emitter<CreateGoodReceiptNoteState> emit) async {
    emit(const _Initial());
  }

  FutureOr<void> _onCreateGoodReceiptNoteStarted(_CreateGoodReceiptNote event, Emitter<CreateGoodReceiptNoteState> emit) async {
    emit(const _UpdateNoteInProgress());
    try {
      final goodReceipt = await repo.mapPropertiesToModel(poCode: event.poCode, phase: event.phase);
      emit(_UpdateNoteSuccess(goodReceipt));
    } catch (e) {
      emit(_UpdateNoteFailure(e.toString()));
    }
  }

  FutureOr<void> _onAddGoodReceiptNoteDetailStarted(_AddGoodReceiptNoteDetail event, Emitter<CreateGoodReceiptNoteState> emit) async {
    emit(const _UpdateNoteInProgress());
    try {
      final goodReceipt = await repo.mapQrCodeDataToList(qrCodeData: event.qrCodeData);
      emit(_UpdateNoteSuccess(goodReceipt));
    } catch (e) {
      emit(_UpdateNoteFailure(e.toString()));
    }
  }
}
