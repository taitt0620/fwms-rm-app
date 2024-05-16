// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestImpl _$$RequestImplFromJson(Map<String, dynamic> json) =>
    _$RequestImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      relatedInformation: json['relatedInformation'] as String,
      phase: (json['phase'] as num).toInt(),
      status: json['status'] as String,
      warehouseId: json['warehouseId'] as String,
      id: json['id'] as String,
      dateCreate: DateTime.parse(json['dateCreate'] as String),
      dateUpdate: DateTime.parse(json['dateUpdate'] as String),
      isDeleted: json['isDeleted'] as bool,
    );

Map<String, dynamic> _$$RequestImplToJson(_$RequestImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'relatedInformation': instance.relatedInformation,
      'phase': instance.phase,
      'status': instance.status,
      'warehouseId': instance.warehouseId,
      'id': instance.id,
      'dateCreate': instance.dateCreate.toIso8601String(),
      'dateUpdate': instance.dateUpdate.toIso8601String(),
      'isDeleted': instance.isDeleted,
    };
