// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quality_control_report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QualityControlReportImpl _$$QualityControlReportImplFromJson(
        Map<String, dynamic> json) =>
    _$QualityControlReportImpl(
      uri: json['uri'] as String,
      poCode: json['poCode'] as String,
      poFax: json['poFax'] as String,
      supplier: json['supplier'] as String,
      licensePlate: json['licensePlate'] as String,
      inspectionDate: DateTime.parse(json['inspectionDate'] as String),
      receiptDate: DateTime.parse(json['receiptDate'] as String),
      phase: (json['phase'] as num).toInt(),
      conclude: json['conclude'] as String,
      comments: json['comments'] as String?,
      userId: json['userId'] as String,
      requestId: json['requestId'] as String,
      id: json['id'] as String,
      dateCreate: DateTime.parse(json['dateCreate'] as String),
      dateUpdate: DateTime.parse(json['dateUpdate'] as String),
      isDeleted: json['isDeleted'] as bool,
    );

Map<String, dynamic> _$$QualityControlReportImplToJson(
        _$QualityControlReportImpl instance) =>
    <String, dynamic>{
      'uri': instance.uri,
      'poCode': instance.poCode,
      'poFax': instance.poFax,
      'supplier': instance.supplier,
      'licensePlate': instance.licensePlate,
      'inspectionDate': instance.inspectionDate.toIso8601String(),
      'receiptDate': instance.receiptDate.toIso8601String(),
      'phase': instance.phase,
      'conclude': instance.conclude,
      'comments': instance.comments,
      'userId': instance.userId,
      'requestId': instance.requestId,
      'id': instance.id,
      'dateCreate': instance.dateCreate.toIso8601String(),
      'dateUpdate': instance.dateUpdate.toIso8601String(),
      'isDeleted': instance.isDeleted,
    };
