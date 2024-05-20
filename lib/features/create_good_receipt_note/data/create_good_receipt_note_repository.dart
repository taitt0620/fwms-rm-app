import 'package:flutter/foundation.dart';
import 'package:fwms_rm_app/features/auth/data/auth_local_data_source.dart';
import 'package:fwms_rm_app/features/create_good_receipt_note/data/create_good_receipt_note_api_client.dart';
import 'package:fwms_rm_app/features/create_good_receipt_note/data/grn_local_data_source.dart';
import 'package:fwms_rm_app/features/create_good_receipt_note/models/create_good_receipt_note.dart';
import 'package:fwms_rm_app/features/qr-scan/models/qr_code_data.dart';

class CreateGoodReceiptNoteRepository {
  final CreateGoodReceiptNoteApiClient apiClient;
  final GoodReceiptNoteLocalDataSource localDataSource;
  final AuthLocalDataSource authLocalDataSource;

  CreateGoodReceiptNoteRepository(
      {required this.localDataSource,
      required this.apiClient,
      required this.authLocalDataSource});

  Future<CreateGoodReceiptNote> mapPropertiesToModel({
    required String poCode,
    required int phase,
  }) async {
    CreateGoodReceiptNote goodReceipt = CreateGoodReceiptNote(
      uri: "string",
      no: "",
      name: "",
      poCode: poCode,
      phase: phase,
      date: DateTime.now(),
      goodReceipNoteDetails: [],
    );
    await localDataSource.saveGoodReceipNote(goodReceipt);
    return goodReceipt;
  }

  Future<CreateGoodReceiptNote> getGoodReceiptNote() async {
    return await localDataSource.getGoodReceipNote();
  }

  Future<CreateGoodReceiptNote> mapQrCodeDataToList(
      {required QrCodeData qrCodeData}) async {
    try {
      final detail = GoodReceipNoteDetail(
        materialName: qrCodeData.name!.isEmpty ? 'unknown' : qrCodeData.name,
        quantity: 0,
        unit: qrCodeData.unit!.isEmpty ? 'unknown' : qrCodeData.unit,
        unitPrice: 0,
        subTotal: 0,
        importQuantity: 0,
      );
      CreateGoodReceiptNote goodReceipt = await getGoodReceiptNote();

      // Tạo một danh sách mới
      final updatedDetails = List<GoodReceipNoteDetail>.from(
          goodReceipt.goodReceipNoteDetails ?? []);
      updatedDetails.add(detail);

      // Tạo một đối tượng CreateGoodReceiptNote mới với danh sách đã cập nhật
      final updatedGoodReceipt =
          goodReceipt.copyWith(goodReceipNoteDetails: updatedDetails);

      await localDataSource
          .saveGoodReceipNote(updatedGoodReceipt); // Lưu đối tượng mới
      final newGoodReceipt = await localDataSource.getGoodReceipNote();
      debugPrint('newGoodReceipt: $newGoodReceipt');
      return newGoodReceipt;
    } on Exception catch (e) {
      throw Exception('Failed to add detail: $e');
    }
  }

  Future<CreateGoodReceiptNote> updateDetail(
      {required int index, required GoodReceipNoteDetail detail}) async {
    CreateGoodReceiptNote currentNote = await localDataSource
        .getGoodReceipNote(); // Replace with your method to get the current report
    debugPrint('currentNote: $currentNote');
    // Create a new list from the current report's details
    List<GoodReceipNoteDetail> newList = List<GoodReceipNoteDetail>.from(
        currentNote.goodReceipNoteDetails ?? []);

    // Replace the item at the given index
    newList[index] = detail;
    debugPrint('newList: ${newList[index]}');
    // Create a new report with the updated list
    CreateGoodReceiptNote updatedNote =
        currentNote.copyWith(goodReceipNoteDetails: newList);

    // Save the updated report
    // Replace with your method to save the report
    await localDataSource.saveGoodReceipNote(updatedNote);

    // Return the updated report
    final newGoodReceipt = await localDataSource.getGoodReceipNote();
    debugPrint('newGoodReceipt: $newGoodReceipt');
    return newGoodReceipt;
  }

  Future<CreateGoodReceiptNote> updateInfomation(
      {required CreateGoodReceiptNote updatedInfo}) async {
    CreateGoodReceiptNote currentNote = await localDataSource
        .getGoodReceipNote(); // Replace with your method to get the current report
    debugPrint('currentNote: $currentNote');
    CreateGoodReceiptNote updatedReport = currentNote.copyWith(
      uri: updatedInfo.uri ?? currentNote.uri,
      no: updatedInfo.no ?? currentNote.no,
      name: updatedInfo.name ?? currentNote.name,
      poCode: updatedInfo.poCode ?? currentNote.poCode,
      phase: updatedInfo.phase ?? currentNote.phase,
      date: updatedInfo.date ?? currentNote.date,
      goodReceipNoteDetails: updatedInfo.goodReceipNoteDetails ??
          currentNote.goodReceipNoteDetails,
    );
    // Save the updated report
    await localDataSource.saveGoodReceipNote(updatedReport);
    final newGoodReceipt = await localDataSource.getGoodReceipNote();
    debugPrint('newGoodReceipt: $newGoodReceipt');
    return newGoodReceipt;
  }

  Future<void> createNote(
      {required CreateGoodReceiptNote createdReport,
      required String requestId}) async {
    try {
      final token = await authLocalDataSource.getToken();
      final report = await apiClient.createNote(
          note: createdReport, token: token!, requestId: requestId);
      return report;
    } on Exception catch (e) {
      debugPrint('Failed to create report: $e');
      throw Exception(e.toString());
    }
  }
}
