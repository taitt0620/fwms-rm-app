// To parse this JSON data, do
//
//     final purchaseOrder = purchaseOrderFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'purchase_order.freezed.dart';
part 'purchase_order.g.dart';

List<PurchaseOrder> purchaseOrderFromJson(String str) =>
    List<PurchaseOrder>.from(
        json.decode(str).map((x) => PurchaseOrder.fromJson(x)));

String purchaseOrderToJson(List<PurchaseOrder> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class PurchaseOrder with _$PurchaseOrder {
  const factory PurchaseOrder({
    @JsonKey(name: "uri") required String uri,
    @JsonKey(name: "poCode") required String poCode,
    @JsonKey(name: "supplier") required String supplier,
    @JsonKey(name: "licensePlate") required String licensePlate,
    @JsonKey(name: "date") required DateTime date,
    @JsonKey(name: "totalPhase") required int totalPhase,
    @JsonKey(name: "address") required String address,
    @JsonKey(name: "fax") required String fax,
    @JsonKey(name: "notes") required String notes,
    @JsonKey(name: "totalPrice") required int totalPrice,
    @JsonKey(name: "status") required String status,
    @JsonKey(name: "userId") required String userId,
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "dateCreate") required DateTime dateCreate,
    @JsonKey(name: "dateUpdate") required DateTime dateUpdate,
    @JsonKey(name: "isDeleted") required bool isDeleted,
  }) = _PurchaseOrder;

  factory PurchaseOrder.fromJson(Map<String, dynamic> json) =>
      _$PurchaseOrderFromJson(json);
}
