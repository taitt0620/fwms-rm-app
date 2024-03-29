// To parse this JSON data, do
//
//     final purchaseOrderResponseDto = purchaseOrderResponseDtoFromJson(jsonString);

import 'dart:convert';

PurchaseOrderResponseDto purchaseOrderResponseDtoFromJson(String str) =>
    PurchaseOrderResponseDto.fromJson(json.decode(str));

String purchaseOrderResponseDtoToJson(PurchaseOrderResponseDto data) =>
    json.encode(data.toJson());

class PurchaseOrderResponseDto {
  final String statusCode;
  final String messagae;
  final Data data;

  PurchaseOrderResponseDto({
    required this.statusCode,
    required this.messagae,
    required this.data,
  });

  factory PurchaseOrderResponseDto.fromJson(Map<String, dynamic> json) =>
      PurchaseOrderResponseDto(
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
  final int pageIndex;
  final int totalPages;
  final int pageSize;
  final int totalCount;
  final bool hasPrevious;
  final bool hasNext;
  final List<PagingDatum> pagingData;

  Data({
    required this.pageIndex,
    required this.totalPages,
    required this.pageSize,
    required this.totalCount,
    required this.hasPrevious,
    required this.hasNext,
    required this.pagingData,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        pageIndex: json["pageIndex"],
        totalPages: json["totalPages"],
        pageSize: json["pageSize"],
        totalCount: json["totalCount"],
        hasPrevious: json["hasPrevious"],
        hasNext: json["hasNext"],
        pagingData: List<PagingDatum>.from(
            json["pagingData"].map((x) => PagingDatum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "pageIndex": pageIndex,
        "totalPages": totalPages,
        "pageSize": pageSize,
        "totalCount": totalCount,
        "hasPrevious": hasPrevious,
        "hasNext": hasNext,
        "pagingData": List<dynamic>.from(pagingData.map((x) => x.toJson())),
      };
}

class PagingDatum {
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

  PagingDatum({
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

  factory PagingDatum.fromJson(Map<String, dynamic> json) => PagingDatum(
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
