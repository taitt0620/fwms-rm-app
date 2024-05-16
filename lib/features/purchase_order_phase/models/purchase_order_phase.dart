// To parse this JSON data, do
//
//     final purchaseOrderPhase = purchaseOrderPhaseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'purchase_order_phase.freezed.dart';
part 'purchase_order_phase.g.dart';

List<PurchaseOrderPhase> purchaseOrderPhaseFromJson(String str) => List<PurchaseOrderPhase>.from(json.decode(str).map((x) => PurchaseOrderPhase.fromJson(x)));

String purchaseOrderPhaseToJson(List<PurchaseOrderPhase> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class PurchaseOrderPhase with _$PurchaseOrderPhase {
    const factory PurchaseOrderPhase({
        @JsonKey(name: "id")
        required String id,
        @JsonKey(name: "uri")
        required String uri,
        @JsonKey(name: "poCode")
        required String poCode,
        @JsonKey(name: "expectedDate")
        required DateTime expectedDate,
        @JsonKey(name: "phase")
        required int phase,
        @JsonKey(name: "notes")
        required String notes,
        @JsonKey(name: "totalPrice")
        required int totalPrice,
        @JsonKey(name: "deliver")
        required String deliver,
        @JsonKey(name: "status")
        required String status,
        @JsonKey(name: "listDetails")
        required List<ListDetail> listDetails,
    }) = _PurchaseOrderPhase;

    factory PurchaseOrderPhase.fromJson(Map<String, dynamic> json) => _$PurchaseOrderPhaseFromJson(json);
}

@freezed
class ListDetail with _$ListDetail {
    const factory ListDetail({
        @JsonKey(name: "materialName")
        required String materialName,
        @JsonKey(name: "quantity")
        required int quantity,
        @JsonKey(name: "unit")
        required String unit,
        @JsonKey(name: "unitPrice")
        required int unitPrice,
        @JsonKey(name: "subTotal")
        required int subTotal,
    }) = _ListDetail;

    factory ListDetail.fromJson(Map<String, dynamic> json) => _$ListDetailFromJson(json);
}
