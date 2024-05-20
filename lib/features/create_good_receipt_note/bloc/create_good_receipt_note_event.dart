part of 'create_good_receipt_note_bloc.dart';

@freezed
class CreateGoodReceiptNoteEvent with _$CreateGoodReceiptNoteEvent {
  const factory CreateGoodReceiptNoteEvent.started() = _Started;
  const factory CreateGoodReceiptNoteEvent.createGoodReceiptNote({
    required String poCode,
    required int phase,
  }) = _CreateGoodReceiptNote;

  const factory CreateGoodReceiptNoteEvent.addGoodReceiptNoteDetail({
    required QrCodeData qrCodeData,
  }) = _AddGoodReceiptNoteDetail;

  const factory CreateGoodReceiptNoteEvent.updateDetail({
    required int index,
    required GoodReceipNoteDetail item,
  }) = _UpdateDetail;

  const factory CreateGoodReceiptNoteEvent.updateInfomation(
      {required CreateGoodReceiptNote updatedInfo}) = _UpdateInformation;

      const factory CreateGoodReceiptNoteEvent.createNote({
    required CreateGoodReceiptNote createdNote,
    required String requestId,
  }) = _CreateNote;
}
