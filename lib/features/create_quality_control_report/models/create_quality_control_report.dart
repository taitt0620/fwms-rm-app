// To parse this JSON data, do
//
//     final createQualityControlReport = createQualityControlReportFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'create_quality_control_report.freezed.dart';
part 'create_quality_control_report.g.dart';

CreateQualityControlReport createQualityControlReportFromJson(String str) =>
    CreateQualityControlReport.fromJson(json.decode(str));

String createQualityControlReportToJson(CreateQualityControlReport data) =>
    json.encode(data.toJson());

@freezed
class CreateQualityControlReport with _$CreateQualityControlReport {
  const factory CreateQualityControlReport({
    @JsonKey(name: "uri") required String uri,
    @JsonKey(name: "poCode") required String poCode,
    @JsonKey(name: "poFax") required String poFax,
    @JsonKey(name: "supplier") required String supplier,
    @JsonKey(name: "licensePlate") required String licensePlate,
    @JsonKey(name: "inspectionDate") required DateTime inspectionDate,
    @JsonKey(name: "receiptDate") required DateTime receiptDate,
    @JsonKey(name: "phase") required int phase,
    @JsonKey(name: "conclude") required int conclude,
    @JsonKey(name: "comments") required String comments,
    @JsonKey(name: "qualityControlReportDetails")
    required List<QualityControlReportDetails> qualityControlReportDetails,
  }) = _CreateQualityControlReport;

  factory CreateQualityControlReport.fromJson(Map<String, dynamic> json) =>
      _$CreateQualityControlReportFromJson(json);
}

@freezed
class QualityControlReportDetails with _$QualityControlReportDetails {
  const factory QualityControlReportDetails({
    @JsonKey(name: "materialName") required String materialName,
    @JsonKey(name: "quantity") required int quantity,
    @JsonKey(name: "unit") required String unit,
    @JsonKey(name: "numberOfChecks") required int numberOfChecks,
    @JsonKey(name: "size") required String size,
    @JsonKey(name: "method") required String method,
    @JsonKey(name: "quantitative") required String quantitative,
    @JsonKey(name: "externalInspection") required String externalInspection,
    @JsonKey(name: "quantityAchieved") required int quantityAchieved,
    @JsonKey(name: "quantityNotReached") required int quantityNotReached,
  }) = _QualityControlReportDetails;

  factory QualityControlReportDetails.fromJson(Map<String, dynamic> json) =>
      _$QualityControlReportDetailsFromJson(json);
}
