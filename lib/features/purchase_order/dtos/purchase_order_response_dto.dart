// To parse this JSON data, do
//
//     final purchaseOrderResponseDto = purchaseOrderResponseDtoFromJson(jsonString);

import 'dart:convert';

PurchaseOrderResponseDto purchaseOrderResponseDtoFromJson(String str) =>
    PurchaseOrderResponseDto.fromJson(json.decode(str));

String purchaseOrderResponseDtoToJson(PurchaseOrderResponseDto data) =>
    json.encode(data.toJson());

class PurchaseOrderResponseDto {
  String? uri;
  String? poCode;
  String? supplier;
  String? licensePlate;
  DateTime? date;
  int? totalPhase;
  String? address;
  String? fax;
  String? notes;
  int? totalPrice;
  String? status;
  String? userId;
  String? id;
  DateTime? dateCreate;
  DateTime? dateUpdate;
  bool? isDeleted;

  PurchaseOrderResponseDto({
    this.uri,
    this.poCode,
    this.supplier,
    this.licensePlate,
    this.date,
    this.totalPhase,
    this.address,
    this.fax,
    this.notes,
    this.totalPrice,
    this.status,
    this.userId,
    this.id,
    this.dateCreate,
    this.dateUpdate,
    this.isDeleted,
  });

  factory PurchaseOrderResponseDto.fromJson(Map<String, dynamic> json) =>
      PurchaseOrderResponseDto(
        uri: json["uri"],
        poCode: json["poCode"],
        supplier: json["supplier"],
        licensePlate: json["licensePlate"],
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        totalPhase: json["totalPhase"],
        address: json["address"],
        fax: json["fax"],
        notes: json["notes"],
        totalPrice: json["totalPrice"],
        status: json["status"],
        userId: json["userId"],
        id: json["id"],
        dateCreate: json["dateCreate"] == null
            ? null
            : DateTime.parse(json["dateCreate"]),
        dateUpdate: json["dateUpdate"] == null
            ? null
            : DateTime.parse(json["dateUpdate"]),
        isDeleted: json["isDeleted"],
      );

  Map<String, dynamic> toJson() => {
        "uri": uri,
        "poCode": poCode,
        "supplier": supplier,
        "licensePlate": licensePlate,
        "date": date?.toIso8601String(),
        "totalPhase": totalPhase,
        "address": address,
        "fax": fax,
        "notes": notes,
        "totalPrice": totalPrice,
        "status": status,
        "userId": userId,
        "id": id,
        "dateCreate": dateCreate?.toIso8601String(),
        "dateUpdate": dateUpdate?.toIso8601String(),
        "isDeleted": isDeleted,
      };
}
