// To parse this JSON data, do
//
//     final requestDto = requestDtoFromJson(jsonString);

import 'dart:convert';

RequestDto requestDtoFromJson(String str) =>
    RequestDto.fromJson(json.decode(str));

String requestDtoToJson(RequestDto data) => json.encode(data.toJson());

class RequestDto {
  String? title;
  String? description;
  String? relatedInformation;
  String? attachment;
  String? status;
  String? warehouseId;
  String? id;
  DateTime? dateCreate;
  DateTime? dateUpdate;
  bool? isDeleted;

  RequestDto({
    this.title,
    this.description,
    this.relatedInformation,
    this.attachment,
    this.status,
    this.warehouseId,
    this.id,
    this.dateCreate,
    this.dateUpdate,
    this.isDeleted,
  });

  factory RequestDto.fromJson(Map<String, dynamic> json) => RequestDto(
        title: json["title"],
        description: json["description"],
        relatedInformation: json["relatedInformation"],
        attachment: json["attachment"],
        status: json["status"],
        warehouseId: json["warehouseId"],
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
        "title": title,
        "description": description,
        "relatedInformation": relatedInformation,
        "attachment": attachment,
        "status": status,
        "warehouseId": warehouseId,
        "id": id,
        "dateCreate": dateCreate?.toIso8601String(),
        "dateUpdate": dateUpdate?.toIso8601String(),
        "isDeleted": isDeleted,
      };
}
