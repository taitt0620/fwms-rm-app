// To parse this JSON data, do
//
//     final warehouseDto = warehouseDtoFromJson(jsonString);

import 'dart:convert';

WarehouseDto warehouseDtoFromJson(String str) =>
    WarehouseDto.fromJson(json.decode(str));

String warehouseDtoToJson(WarehouseDto data) => json.encode(data.toJson());

class WarehouseDto {
  String? name;
  String? status;
  String? type;
  String? id;
  DateTime? dateCreate;
  DateTime? dateUpdate;
  bool? isDeleted;

  WarehouseDto({
    this.name,
    this.status,
    this.type,
    this.id,
    this.dateCreate,
    this.dateUpdate,
    this.isDeleted,
  });

  factory WarehouseDto.fromJson(Map<String, dynamic> json) => WarehouseDto(
        name: json["name"],
        status: json["status"],
        type: json["type"],
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
        "name": name,
        "status": status,
        "type": type,
        "id": id,
        "dateCreate": dateCreate?.toIso8601String(),
        "dateUpdate": dateUpdate?.toIso8601String(),
        "isDeleted": isDeleted,
      };
}
