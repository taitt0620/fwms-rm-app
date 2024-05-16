// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warehouse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WarehouseImpl _$$WarehouseImplFromJson(Map<String, dynamic> json) =>
    _$WarehouseImpl(
      name: json['name'] as String,
      status: json['status'] as String,
      type: json['type'] as String,
      id: json['id'] as String,
      dateCreate: DateTime.parse(json['dateCreate'] as String),
      dateUpdate: DateTime.parse(json['dateUpdate'] as String),
      isDeleted: json['isDeleted'] as bool,
    );

Map<String, dynamic> _$$WarehouseImplToJson(_$WarehouseImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'status': instance.status,
      'type': instance.type,
      'id': instance.id,
      'dateCreate': instance.dateCreate.toIso8601String(),
      'dateUpdate': instance.dateUpdate.toIso8601String(),
      'isDeleted': instance.isDeleted,
    };
