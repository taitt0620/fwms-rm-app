// To parse this JSON data, do
//
//     final purchaseOrderDto = purchaseOrderDtoFromJson(jsonString);

import 'dart:convert';

PurchaseOrderDto purchaseOrderDtoFromJson(String str) =>
    PurchaseOrderDto.fromJson(json.decode(str));

String purchaseOrderDtoToJson(PurchaseOrderDto data) =>
    json.encode(data.toJson());

class PurchaseOrderDto {
  final String statusCode;
  final String messagae;
  final Data data;

  PurchaseOrderDto({
    required this.statusCode,
    required this.messagae,
    required this.data,
  });

  factory PurchaseOrderDto.fromJson(Map<String, dynamic> json) =>
      PurchaseOrderDto(
        statusCode: json["statusCode"],
        messagae: json["messagae"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "messagae": messagae,
        "data": data.toJson(),
      };
}

class Data {
  final String uri;
  final String poCode;
  final String supplier;
  final DateTime date;
  final String address;
  final String fax;
  final String notes;
  final int totalPrice;
  final String userId;
  final String id;
  final DateTime dateCreate;
  final DateTime dateUpdate;
  final bool isDeleted;

  Data({
    required this.uri,
    required this.poCode,
    required this.supplier,
    required this.date,
    required this.address,
    required this.fax,
    required this.notes,
    required this.totalPrice,
    required this.userId,
    required this.id,
    required this.dateCreate,
    required this.dateUpdate,
    required this.isDeleted,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        uri: json["uri"],
        poCode: json["poCode"],
        supplier: json["supplier"],
        date: DateTime.parse(json["date"]),
        address: json["address"],
        fax: json["fax"],
        notes: json["notes"],
        totalPrice: json["totalPrice"],
        userId: json["userId"],
        id: json["id"],
        dateCreate: DateTime.parse(json["dateCreate"]),
        dateUpdate: DateTime.parse(json["dateUpdate"]),
        isDeleted: json["isDeleted"],
      );

  Map<String, dynamic> toJson() => {
        "uri": uri,
        "poCode": poCode,
        "supplier": supplier,
        "date": date.toIso8601String(),
        "address": address,
        "fax": fax,
        "notes": notes,
        "totalPrice": totalPrice,
        "userId": userId,
        "id": id,
        "dateCreate": dateCreate.toIso8601String(),
        "dateUpdate": dateUpdate.toIso8601String(),
        "isDeleted": isDeleted,
      };
}
