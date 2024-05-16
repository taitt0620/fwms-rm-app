// To parse this JSON data, do
//
//     final warehouse = warehouseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'warehouse.freezed.dart';
part 'warehouse.g.dart';

List<Warehouse> warehouseFromJson(String str) => List<Warehouse>.from(json.decode(str).map((x) => Warehouse.fromJson(x)));

String warehouseToJson(List<Warehouse> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class Warehouse with _$Warehouse {
    const factory Warehouse({
        @JsonKey(name: "name")
        required String name,
        @JsonKey(name: "status")
        required String status,
        @JsonKey(name: "type")
        required String type,
        @JsonKey(name: "id")
        required String id,
        @JsonKey(name: "dateCreate")
        required DateTime dateCreate,
        @JsonKey(name: "dateUpdate")
        required DateTime dateUpdate,
        @JsonKey(name: "isDeleted")
        required bool isDeleted,
    }) = _Warehouse;

    factory Warehouse.fromJson(Map<String, dynamic> json) => _$WarehouseFromJson(json);
}
