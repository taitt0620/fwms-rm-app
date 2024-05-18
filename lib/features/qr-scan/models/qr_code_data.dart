// To parse this JSON data, do
//
//     final qrCodeData = qrCodeDataFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'qr_code_data.freezed.dart';
part 'qr_code_data.g.dart';

QrCodeData qrCodeDataFromJson(String str) =>
    QrCodeData.fromJson(json.decode(str));

String qrCodeDataToJson(QrCodeData data) => json.encode(data.toJson());

@freezed
class QrCodeData with _$QrCodeData {
  const factory QrCodeData({
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "unit") String? unit,
    @JsonKey(name: "color") String? color,
    @JsonKey(name: "externalInspection") String? externalInspection,
    @JsonKey(name: "length") String? length,
    @JsonKey(name: "width") String? width,
    @JsonKey(name: "grossWeight") String? grossWeight,
    @JsonKey(name: "netWeight") String? netWeight,
    @JsonKey(name: "attribute") String? attribute,
    @JsonKey(name: "isQualityChecked") String? isQualityChecked,
  }) = _QrCodeData;

  factory QrCodeData.fromJson(Map<String, dynamic> json) =>
      _$QrCodeDataFromJson(json);
}
