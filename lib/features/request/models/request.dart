// To parse this JSON data, do
//
//     final request = requestFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'request.freezed.dart';
part 'request.g.dart';

List<Request> requestFromJson(String str) => List<Request>.from(json.decode(str).map((x) => Request.fromJson(x)));

String requestToJson(List<Request> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class Request with _$Request {
    const factory Request({
        @JsonKey(name: "title")
        required String title,
        @JsonKey(name: "description")
        required String description,
        @JsonKey(name: "relatedInformation")
        required String relatedInformation,
        @JsonKey(name: "phase")
        required int phase,
        @JsonKey(name: "status")
        required String status,
        @JsonKey(name: "warehouseId")
        required String warehouseId,
        @JsonKey(name: "id")
        required String id,
        @JsonKey(name: "dateCreate")
        required DateTime dateCreate,
        @JsonKey(name: "dateUpdate")
        required DateTime dateUpdate,
        @JsonKey(name: "isDeleted")
        required bool isDeleted,
    }) = _Request;

    factory Request.fromJson(Map<String, dynamic> json) => _$RequestFromJson(json);
}
