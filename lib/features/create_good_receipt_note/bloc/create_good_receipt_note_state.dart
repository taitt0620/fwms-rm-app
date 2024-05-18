part of 'create_good_receipt_note_bloc.dart';

@freezed
class CreateGoodReceiptNoteState with _$CreateGoodReceiptNoteState {
  const factory CreateGoodReceiptNoteState.initial() = _Initial;
  const factory CreateGoodReceiptNoteState.inProgress() = _InProgress;
  const factory CreateGoodReceiptNoteState.success(CreateGoodReceiptNote goodReceipt) = _Success;
  const factory CreateGoodReceiptNoteState.failure(String message) = _Failure;

  const factory CreateGoodReceiptNoteState.updateNoteInProgress() = _UpdateNoteInProgress;
  const factory CreateGoodReceiptNoteState.updateNoteSuccess(CreateGoodReceiptNote goodReceipt) = _UpdateNoteSuccess;
  const factory CreateGoodReceiptNoteState.updateNoteFailure(String message) = _UpdateNoteFailure;
}
