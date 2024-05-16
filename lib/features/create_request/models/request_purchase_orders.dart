// To parse this JSON data, do
//
//     final requestPurchaseOrders = requestPurchaseOrdersFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'request_purchase_orders.freezed.dart';
part 'request_purchase_orders.g.dart';

List<RequestPurchaseOrders> requestPurchaseOrdersFromJson(String str) =>
    List<RequestPurchaseOrders>.from(
        json.decode(str)['data'].map((x) => RequestPurchaseOrders.fromJson(x)));

String requestPurchaseOrdersToJson(List<RequestPurchaseOrders> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class RequestPurchaseOrders with _$RequestPurchaseOrders {
  const factory RequestPurchaseOrders({
    @JsonKey(name: "uri") required dynamic uri,
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
    @JsonKey(name: "purchaseOrderPhases")
    required List<PurchaseOrderPhase> purchaseOrderPhases,
  }) = _RequestPurchaseOrders;

  factory RequestPurchaseOrders.fromJson(Map<String, dynamic> json) =>
      _$RequestPurchaseOrdersFromJson(json);
}

@freezed
class PurchaseOrderPhase with _$PurchaseOrderPhase {
  const factory PurchaseOrderPhase({
    @JsonKey(name: "uri") required dynamic uri,
    @JsonKey(name: "expectedDate") required DateTime expectedDate,
    @JsonKey(name: "phase") required int phase,
    @JsonKey(name: "notes") required String notes,
    @JsonKey(name: "totalPrice") required int totalPrice,
    @JsonKey(name: "deliver") required String deliver,
    @JsonKey(name: "status") required String status,
    @JsonKey(name: "purchaseOrderId") required String purchaseOrderId,
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "dateCreate") required DateTime dateCreate,
    @JsonKey(name: "dateUpdate") required DateTime dateUpdate,
    @JsonKey(name: "isDeleted") required bool isDeleted,
  }) = _PurchaseOrderPhase;

  factory PurchaseOrderPhase.fromJson(Map<String, dynamic> json) =>
      _$PurchaseOrderPhaseFromJson(json);
}
