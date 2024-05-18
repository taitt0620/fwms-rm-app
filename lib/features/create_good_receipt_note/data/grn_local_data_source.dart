import 'dart:convert';

import 'package:fwms_rm_app/features/create_good_receipt_note/data/grn_constants.dart';
import 'package:fwms_rm_app/features/create_good_receipt_note/models/create_good_receipt_note.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GoodReceiptNoteLocalDataSource {
  final SharedPreferences sharedPreferences;

  GoodReceiptNoteLocalDataSource(this.sharedPreferences);

  Future<void> saveGoodReceipNote(CreateGoodReceiptNote goodReceipt) async {
    String jsonString = jsonEncode(goodReceipt.toJson());
    await sharedPreferences.setString(
        CreateGoodReceiptNoteConstants.goodReceiptNote, jsonString);
  }

  Future<CreateGoodReceiptNote> getGoodReceipNote() async {
    String? jsonString = sharedPreferences
        .getString(CreateGoodReceiptNoteConstants.goodReceiptNote);
    if (jsonString != null) {
      final createGoodReceiptNote =
          CreateGoodReceiptNote.fromJson(jsonDecode(jsonString));

      return createGoodReceiptNote;
    } else {
      throw Exception('Good Receipt Note not found');
    }
  }
}
