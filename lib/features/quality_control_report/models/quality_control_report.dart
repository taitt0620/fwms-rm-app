// To parse this JSON data, do
//
//     final qualityControlReport = qualityControlReportFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'quality_control_report.freezed.dart';
part 'quality_control_report.g.dart';

List<QualityControlReport> qualityControlReportFromJson(String str) => List<QualityControlReport>.from(json.decode(str).map((x) => QualityControlReport.fromJson(x)));

String qualityControlReportToJson(List<QualityControlReport> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class QualityControlReport with _$QualityControlReport {
    const factory QualityControlReport({
        @JsonKey(name: "uri")
        required String uri,
        @JsonKey(name: "poCode")
        required String poCode,
        @JsonKey(name: "poFax")
        required String poFax,
        @JsonKey(name: "supplier")
        required String supplier,
        @JsonKey(name: "licensePlate")
        required String licensePlate,
        @JsonKey(name: "inspectionDate")
        required DateTime inspectionDate,
        @JsonKey(name: "receiptDate")
        required DateTime receiptDate,
        @JsonKey(name: "phase")
        required int phase,
        @JsonKey(name: "conclude")
        required String conclude,
        @JsonKey(name: "comments")
        String? comments,
        @JsonKey(name: "userId")
        required String userId,
        @JsonKey(name: "requestId")
        required String requestId,
        @JsonKey(name: "id")
        required String id,
        @JsonKey(name: "dateCreate")
        required DateTime dateCreate,
        @JsonKey(name: "dateUpdate")
        required DateTime dateUpdate,
        @JsonKey(name: "isDeleted")
        required bool isDeleted,
    }) = _QualityControlReport;

    factory QualityControlReport.fromJson(Map<String, dynamic> json) => _$QualityControlReportFromJson(json);
}
