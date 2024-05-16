// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_quality_control_report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateQualityControlReportImpl _$$CreateQualityControlReportImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateQualityControlReportImpl(
      uri: json['uri'] as String,
      poCode: json['poCode'] as String,
      poFax: json['poFax'] as String,
      supplier: json['supplier'] as String,
      licensePlate: json['licensePlate'] as String,
      inspectionDate: DateTime.parse(json['inspectionDate'] as String),
      receiptDate: DateTime.parse(json['receiptDate'] as String),
      phase: (json['phase'] as num).toInt(),
      conclude: (json['conclude'] as num).toInt(),
      comments: json['comments'] as String,
      qualityControlReportDetails: (json['qualityControlReportDetails']
              as List<dynamic>)
          .map((e) =>
              QualityControlReportDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CreateQualityControlReportImplToJson(
        _$CreateQualityControlReportImpl instance) =>
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
      'qualityControlReportDetails': instance.qualityControlReportDetails,
    };

_$QualityControlReportDetailsImpl _$$QualityControlReportDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$QualityControlReportDetailsImpl(
      materialName: json['materialName'] as String,
      quantity: (json['quantity'] as num).toInt(),
      unit: json['unit'] as String,
      numberOfChecks: (json['numberOfChecks'] as num).toInt(),
      size: json['size'] as String,
      method: json['method'] as String,
      quantitative: json['quantitative'] as String,
      externalInspection: json['externalInspection'] as String,
      quantityAchieved: (json['quantityAchieved'] as num).toInt(),
      quantityNotReached: (json['quantityNotReached'] as num).toInt(),
    );

Map<String, dynamic> _$$QualityControlReportDetailsImplToJson(
        _$QualityControlReportDetailsImpl instance) =>
    <String, dynamic>{
      'materialName': instance.materialName,
      'quantity': instance.quantity,
      'unit': instance.unit,
      'numberOfChecks': instance.numberOfChecks,
      'size': instance.size,
      'method': instance.method,
      'quantitative': instance.quantitative,
      'externalInspection': instance.externalInspection,
      'quantityAchieved': instance.quantityAchieved,
      'quantityNotReached': instance.quantityNotReached,
    };
