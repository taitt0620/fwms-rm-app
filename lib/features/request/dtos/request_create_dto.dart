// To parse this JSON data, do
//
//     final requestCreateDto = requestCreateDtoFromJson(jsonString);

import 'dart:convert';

RequestCreateDto requestCreateDtoFromJson(String str) =>
    RequestCreateDto.fromJson(json.decode(str));

String requestCreateDtoToJson(RequestCreateDto data) =>
    json.encode(data.toJson());

class RequestCreateDto {
  String? title;
  String? description;
  String? relatedInformation;
  String? attachment;
  String? warehouseId;

  RequestCreateDto({
    this.title,
    this.description,
    this.relatedInformation,
    this.attachment,
    this.warehouseId,
  });

  factory RequestCreateDto.fromJson(Map<String, dynamic> json) =>
      RequestCreateDto(
        title: json["title"],
        description: json["description"],
        relatedInformation: json["relatedInformation"],
        attachment: json["attachment"],
        warehouseId: json["warehouseId"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
        "relatedInformation": relatedInformation,
        "attachment": attachment,
        "warehouseId": warehouseId,
      };
}
