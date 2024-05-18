// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qr_code_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QrCodeDataImpl _$$QrCodeDataImplFromJson(Map<String, dynamic> json) =>
    _$QrCodeDataImpl(
      image: json['image'] as String?,
      name: json['name'] as String?,
      unit: json['unit'] as String?,
      color: json['color'] as String?,
      externalInspection: json['externalInspection'] as String?,
      length: json['length'] as String?,
      width: json['width'] as String?,
      grossWeight: json['grossWeight'] as String?,
      netWeight: json['netWeight'] as String?,
      attribute: json['attribute'] as String?,
      isQualityChecked: json['isQualityChecked'] as String?,
    );

Map<String, dynamic> _$$QrCodeDataImplToJson(_$QrCodeDataImpl instance) =>
    <String, dynamic>{
      'image': instance.image,
      'name': instance.name,
      'unit': instance.unit,
      'color': instance.color,
      'externalInspection': instance.externalInspection,
      'length': instance.length,
      'width': instance.width,
      'grossWeight': instance.grossWeight,
      'netWeight': instance.netWeight,
      'attribute': instance.attribute,
      'isQualityChecked': instance.isQualityChecked,
    };
