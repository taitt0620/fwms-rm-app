// To parse this JSON data, do
//
//     final createGoodReceiptNote = createGoodReceiptNoteFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'create_good_receipt_note.freezed.dart';
part 'create_good_receipt_note.g.dart';

CreateGoodReceiptNote createGoodReceiptNoteFromJson(String str) => CreateGoodReceiptNote.fromJson(json.decode(str));

String createGoodReceiptNoteToJson(CreateGoodReceiptNote data) => json.encode(data.toJson());

@freezed
class CreateGoodReceiptNote with _$CreateGoodReceiptNote {
    const factory CreateGoodReceiptNote({
        @JsonKey(name: "uri")
        String? uri,
        @JsonKey(name: "no")
        String? no,
        @JsonKey(name: "name")
        String? name,
        @JsonKey(name: "poCode")
        String? poCode,
        @JsonKey(name: "phase")
        int? phase,
        @JsonKey(name: "date")
        DateTime? date,
        @JsonKey(name: "goodReceipNoteDetails")
        List<GoodReceipNoteDetail>? goodReceipNoteDetails,
    }) = _CreateGoodReceiptNote;

    factory CreateGoodReceiptNote.fromJson(Map<String, dynamic> json) => _$CreateGoodReceiptNoteFromJson(json);
}

@freezed
class GoodReceipNoteDetail with _$GoodReceipNoteDetail {
    const factory GoodReceipNoteDetail({
        @JsonKey(name: "materialName")
        String? materialName,
        @JsonKey(name: "quantity")
        int? quantity,
        @JsonKey(name: "unit")
        String? unit,
        @JsonKey(name: "unitPrice")
        int? unitPrice,
        @JsonKey(name: "subTotal")
        int? subTotal,
        @JsonKey(name: "importQuantity")
        int? importQuantity,
    }) = _GoodReceipNoteDetail;

    factory GoodReceipNoteDetail.fromJson(Map<String, dynamic> json) => _$GoodReceipNoteDetailFromJson(json);
}
