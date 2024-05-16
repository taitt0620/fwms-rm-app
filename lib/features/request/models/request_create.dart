// To parse this JSON data, do
//
//     final requestCreateDto = requestCreateDtoFromJson(jsonString);

import 'dart:convert';

RequestCreate requestCreateDtoFromJson(String str) =>
    RequestCreate.fromJson(json.decode(str));

String requestCreateDtoToJson(RequestCreate data) => json.encode(data.toJson());

class RequestCreate {
  String? title;
  String? description;
  String? relatedInformation;
  String? attachment;
  String? warehouseId;

  RequestCreate({
    this.title,
    this.description,
    this.relatedInformation,
    this.attachment,
    this.warehouseId,
  });

  factory RequestCreate.fromJson(Map<String, dynamic> json) => RequestCreate(
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
