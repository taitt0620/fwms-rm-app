// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PurchaseOrderImpl _$$PurchaseOrderImplFromJson(Map<String, dynamic> json) =>
    _$PurchaseOrderImpl(
      uri: json['uri'] as String,
      poCode: json['poCode'] as String,
      supplier: json['supplier'] as String,
      licensePlate: json['licensePlate'] as String,
      date: DateTime.parse(json['date'] as String),
      totalPhase: (json['totalPhase'] as num).toInt(),
      address: json['address'] as String,
      fax: json['fax'] as String,
      notes: json['notes'] as String,
      totalPrice: (json['totalPrice'] as num).toInt(),
      status: json['status'] as String,
      userId: json['userId'] as String,
      id: json['id'] as String,
      dateCreate: DateTime.parse(json['dateCreate'] as String),
      dateUpdate: DateTime.parse(json['dateUpdate'] as String),
      isDeleted: json['isDeleted'] as bool,
    );

Map<String, dynamic> _$$PurchaseOrderImplToJson(_$PurchaseOrderImpl instance) =>
    <String, dynamic>{
      'uri': instance.uri,
      'poCode': instance.poCode,
      'supplier': instance.supplier,
      'licensePlate': instance.licensePlate,
      'date': instance.date.toIso8601String(),
      'totalPhase': instance.totalPhase,
      'address': instance.address,
      'fax': instance.fax,
      'notes': instance.notes,
      'totalPrice': instance.totalPrice,
      'status': instance.status,
      'userId': instance.userId,
      'id': instance.id,
      'dateCreate': instance.dateCreate.toIso8601String(),
      'dateUpdate': instance.dateUpdate.toIso8601String(),
      'isDeleted': instance.isDeleted,
    };
