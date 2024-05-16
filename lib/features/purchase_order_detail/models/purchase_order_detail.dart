// To parse this JSON data, do
//
//     final purchaseOrderDetail = purchaseOrderDetailFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'purchase_order_detail.freezed.dart';
part 'purchase_order_detail.g.dart';

PurchaseOrderDetail purchaseOrderDetailFromJson(String str) =>
    PurchaseOrderDetail.fromJson(json.decode(str));

String purchaseOrderDetailToJson(PurchaseOrderDetail data) =>
    json.encode(data.toJson());

@freezed
class PurchaseOrderDetail with _$PurchaseOrderDetail {
  const factory PurchaseOrderDetail({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "poCode") required String poCode,
    @JsonKey(name: "supplier") required String supplier,
    @JsonKey(name: "licensePlate") required String licensePlate,
    @JsonKey(name: "date") required DateTime date,
    @JsonKey(name: "totalPhase") required int totalPhase,
    @JsonKey(name: "address") required String address,
    @JsonKey(name: "fax") required String fax,
    @JsonKey(name: "notes") required String notes,
    @JsonKey(name: "totalPrice") required int totalPrice,
    @JsonKey(name: "staffName") required String staffName,
    @JsonKey(name: "status") required String status,
    @JsonKey(name: "listDetails") required List<ListDetail> listDetails,
  }) = _PurchaseOrderDetail;

  factory PurchaseOrderDetail.fromJson(Map<String, dynamic> json) =>
      _$PurchaseOrderDetailFromJson(json);
}

@freezed
class ListDetail with _$ListDetail {
  const factory ListDetail({
    @JsonKey(name: "materialName") required String materialName,
    @JsonKey(name: "quantity") required int quantity,
    @JsonKey(name: "unit") required String unit,
    @JsonKey(name: "unitPrice") required int unitPrice,
    @JsonKey(name: "subTotal") required int subTotal,
  }) = _ListDetail;

  factory ListDetail.fromJson(Map<String, dynamic> json) =>
      _$ListDetailFromJson(json);
}
