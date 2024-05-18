import 'package:flutter/foundation.dart';
import 'package:fwms_rm_app/features/create_good_receipt_note/data/grn_local_data_source.dart';
import 'package:fwms_rm_app/features/create_good_receipt_note/models/create_good_receipt_note.dart';
import 'package:fwms_rm_app/features/qr-scan/models/qr_code_data.dart';

class CreateGoodReceiptNoteRepository {
  final GoodReceiptNoteLocalDataSource localDataSource;

  CreateGoodReceiptNoteRepository({required this.localDataSource});

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
}
