// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quality_control_report_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QualityControlReportDetailImpl _$$QualityControlReportDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$QualityControlReportDetailImpl(
      id: json['id'] as String?,
      uri: json['uri'] as String?,
      poCode: json['poCode'] as String?,
      poFax: json['poFax'] as String?,
      supplier: json['supplier'] as String?,
      licensePlate: json['licensePlate'] as String?,
      inspectionDate: json['inspectionDate'] == null
          ? null
          : DateTime.parse(json['inspectionDate'] as String),
      receiptDate: json['receiptDate'] == null
          ? null
          : DateTime.parse(json['receiptDate'] as String),
      phase: (json['phase'] as num?)?.toInt(),
      conclude: json['conclude'] as String?,
      comments: json['comments'] as String?,
      qualityControlReportDetails:
          (json['qualityControlReportDetails'] as List<dynamic>?)
              ?.map((e) => QualityControlReportDetailElement.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$QualityControlReportDetailImplToJson(
        _$QualityControlReportDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uri': instance.uri,
      'poCode': instance.poCode,
      'poFax': instance.poFax,
      'supplier': instance.supplier,
      'licensePlate': instance.licensePlate,
      'inspectionDate': instance.inspectionDate?.toIso8601String(),
      'receiptDate': instance.receiptDate?.toIso8601String(),
      'phase': instance.phase,
      'conclude': instance.conclude,
      'comments': instance.comments,
      'qualityControlReportDetails': instance.qualityControlReportDetails,
    };

_$QualityControlReportDetailElementImpl
    _$$QualityControlReportDetailElementImplFromJson(
            Map<String, dynamic> json) =>
        _$QualityControlReportDetailElementImpl(
          qrCode: json['qrCode'] == null
              ? null
              : QrCode.fromJson(json['qrCode'] as Map<String, dynamic>),
          materialId: json['materialId'] as String?,
          materialName: json['materialName'] as String?,
          quantity: (json['quantity'] as num?)?.toInt(),
          unit: json['unit'] as String?,
          numberOfChecks: (json['numberOfChecks'] as num?)?.toInt(),
          quantityAchieved: (json['quantityAchieved'] as num?)?.toInt(),
          quantityNotReached: (json['quantityNotReached'] as num?)?.toInt(),
        );

Map<String, dynamic> _$$QualityControlReportDetailElementImplToJson(
        _$QualityControlReportDetailElementImpl instance) =>
    <String, dynamic>{
      'qrCode': instance.qrCode,
      'materialId': instance.materialId,
      'materialName': instance.materialName,
      'quantity': instance.quantity,
      'unit': instance.unit,
      'numberOfChecks': instance.numberOfChecks,
      'quantityAchieved': instance.quantityAchieved,
      'quantityNotReached': instance.quantityNotReached,
    };

_$QrCodeImpl _$$QrCodeImplFromJson(Map<String, dynamic> json) => _$QrCodeImpl(
      image: json['image'] as String?,
      color: json['color'] as String?,
      length: (json['length'] as num?)?.toInt(),
      lengthUnit: json['lengthUnit'] as String?,
      width: (json['width'] as num?)?.toInt(),
      widthUnit: json['widthUnit'] as String?,
      grossWeight: (json['grossWeight'] as num?)?.toInt(),
      grossWeightUnit: json['grossWeightUnit'] as String?,
      netWeight: (json['netWeight'] as num?)?.toInt(),
      netWeightUnit: json['netWeightUnit'] as String?,
      attribute: json['attribute'] as String?,
      isQualityChecked: json['isQualityChecked'] as String?,
      materialId: json['materialId'] as String?,
      id: json['id'] as String?,
      dateCreate: json['dateCreate'] == null
          ? null
          : DateTime.parse(json['dateCreate'] as String),
      dateUpdate: json['dateUpdate'] == null
          ? null
          : DateTime.parse(json['dateUpdate'] as String),
      isDeleted: json['isDeleted'] as bool?,
    );

Map<String, dynamic> _$$QrCodeImplToJson(_$QrCodeImpl instance) =>
    <String, dynamic>{
      'image': instance.image,
      'color': instance.color,
      'length': instance.length,
      'lengthUnit': instance.lengthUnit,
      'width': instance.width,
      'widthUnit': instance.widthUnit,
      'grossWeight': instance.grossWeight,
      'grossWeightUnit': instance.grossWeightUnit,
      'netWeight': instance.netWeight,
      'netWeightUnit': instance.netWeightUnit,
      'attribute': instance.attribute,
      'isQualityChecked': instance.isQualityChecked,
      'materialId': instance.materialId,
      'id': instance.id,
      'dateCreate': instance.dateCreate?.toIso8601String(),
      'dateUpdate': instance.dateUpdate?.toIso8601String(),
      'isDeleted': instance.isDeleted,
    };
