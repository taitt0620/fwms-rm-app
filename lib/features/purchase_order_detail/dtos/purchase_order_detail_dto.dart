// To parse this JSON data, do
//
//     final purchaseOrderDetailDto = purchaseOrderDetailDtoFromJson(jsonString);

import 'dart:convert';

PurchaseOrderDetailDto purchaseOrderDetailDtoFromJson(String str) =>
    PurchaseOrderDetailDto.fromJson(json.decode(str));

String purchaseOrderDetailDtoToJson(PurchaseOrderDetailDto data) =>
    json.encode(data.toJson());

class PurchaseOrderDetailDto {
  String? id;
  String? poCode;
  String? supplier;
  DateTime? date;
  String? address;
  String? fax;
  String? notes;
  double? totalPrice;
  String? staffName;
  List<ListDetail>? listDetails;

  PurchaseOrderDetailDto({
    this.id,
    this.poCode,
    this.supplier,
    this.date,
    this.address,
    this.fax,
    this.notes,
    this.totalPrice,
    this.staffName,
    this.listDetails,
  });

  factory PurchaseOrderDetailDto.fromJson(Map<String, dynamic> json) =>
      PurchaseOrderDetailDto(
        id: json["id"],
        poCode: json["poCode"],
        supplier: json["supplier"],
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        address: json["address"],
        fax: json["fax"],
        notes: json["notes"],
        totalPrice: json["totalPrice"] as double,
        staffName: json["staffName"],
        listDetails: json["listDetails"] == null
            ? []
            : List<ListDetail>.from(
                json["listDetails"]!.map((x) => ListDetail.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "poCode": poCode,
        "supplier": supplier,
        "date": date?.toIso8601String(),
        "address": address,
        "fax": fax,
        "notes": notes,
        "totalPrice": totalPrice,
        "staffName": staffName,
        "listDetails": listDetails == null
            ? []
            : List<dynamic>.from(listDetails!.map((x) => x.toJson())),
      };
}

class ListDetail {
  String? materialName;
  int? quantity;
  String? unit;
  double? unitPrice;
  double? subTotal;

  ListDetail({
    this.materialName,
    this.quantity,
    this.unit,
    this.unitPrice,
    this.subTotal,
  });

  factory ListDetail.fromJson(Map<String, dynamic> json) => ListDetail(
        materialName: json["materialName"],
        quantity: json["quantity"],
        unit: json["unit"],
        unitPrice: json["unitPrice"] as double,
        subTotal: json["subTotal"] as double,
      );

  Map<String, dynamic> toJson() => {
        "materialName": materialName,
        "quantity": quantity,
        "unit": unit,
        "unitPrice": unitPrice,
        "subTotal": subTotal,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
