// To parse this JSON data, do
//
//     final qualityControlReportDetail = qualityControlReportDetailFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'quality_control_report_detail.freezed.dart';
part 'quality_control_report_detail.g.dart';

List<QualityControlReportDetail> qualityControlReportDetailFromJson(
        String str) =>
    List<QualityControlReportDetail>.from(
        json.decode(str).map((x) => QualityControlReportDetail.fromJson(x)));

String qualityControlReportDetailToJson(
        List<QualityControlReportDetail> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class QualityControlReportDetail with _$QualityControlReportDetail {
  const factory QualityControlReportDetail({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "uri") String? uri,
    @JsonKey(name: "poCode") String? poCode,
    @JsonKey(name: "poFax") String? poFax,
    @JsonKey(name: "supplier") String? supplier,
    @JsonKey(name: "licensePlate") String? licensePlate,
    @JsonKey(name: "inspectionDate") DateTime? inspectionDate,
    @JsonKey(name: "receiptDate") DateTime? receiptDate,
    @JsonKey(name: "phase") int? phase,
    @JsonKey(name: "conclude") String? conclude,
    @JsonKey(name: "comments") String? comments,
    @JsonKey(name: "qualityControlReportDetails")
    List<QualityControlReportDetailElement>? qualityControlReportDetails,
  }) = _QualityControlReportDetail;

  factory QualityControlReportDetail.fromJson(Map<String, dynamic> json) =>
      _$QualityControlReportDetailFromJson(json);
}

@freezed
class QualityControlReportDetailElement
    with _$QualityControlReportDetailElement {
  const factory QualityControlReportDetailElement({
    @JsonKey(name: "qrCode") QrCode? qrCode,
    @JsonKey(name: "materialId") String? materialId,
    @JsonKey(name: "materialName") String? materialName,
    @JsonKey(name: "quantity") int? quantity,
    @JsonKey(name: "unit") String? unit,
    @JsonKey(name: "numberOfChecks") int? numberOfChecks,
    @JsonKey(name: "quantityAchieved") int? quantityAchieved,
    @JsonKey(name: "quantityNotReached") int? quantityNotReached,
  }) = _QualityControlReportDetailElement;

  factory QualityControlReportDetailElement.fromJson(
          Map<String, dynamic> json) =>
      _$QualityControlReportDetailElementFromJson(json);
}

@freezed
class QrCode with _$QrCode {
  const factory QrCode({
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "color") String? color,
    @JsonKey(name: "length") int? length,
    @JsonKey(name: "lengthUnit") String? lengthUnit,
    @JsonKey(name: "width") int? width,
    @JsonKey(name: "widthUnit") String? widthUnit,
    @JsonKey(name: "grossWeight") int? grossWeight,
    @JsonKey(name: "grossWeightUnit") String? grossWeightUnit,
    @JsonKey(name: "netWeight") int? netWeight,
    @JsonKey(name: "netWeightUnit") String? netWeightUnit,
    @JsonKey(name: "attribute") String? attribute,
    @JsonKey(name: "isQualityChecked") String? isQualityChecked,
    @JsonKey(name: "materialId") String? materialId,
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "dateCreate") DateTime? dateCreate,
    @JsonKey(name: "dateUpdate") DateTime? dateUpdate,
    @JsonKey(name: "isDeleted") bool? isDeleted,
  }) = _QrCode;

  factory QrCode.fromJson(Map<String, dynamic> json) => _$QrCodeFromJson(json);
}
