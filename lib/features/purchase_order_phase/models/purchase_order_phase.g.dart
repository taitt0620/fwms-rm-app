// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_order_phase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PurchaseOrderPhaseImpl _$$PurchaseOrderPhaseImplFromJson(
        Map<String, dynamic> json) =>
    _$PurchaseOrderPhaseImpl(
      id: json['id'] as String,
      uri: json['uri'] as String,
      poCode: json['poCode'] as String,
      expectedDate: DateTime.parse(json['expectedDate'] as String),
      phase: (json['phase'] as num).toInt(),
      notes: json['notes'] as String,
      totalPrice: (json['totalPrice'] as num).toInt(),
      deliver: json['deliver'] as String,
      status: json['status'] as String,
      listDetails: (json['listDetails'] as List<dynamic>)
          .map((e) => ListDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PurchaseOrderPhaseImplToJson(
        _$PurchaseOrderPhaseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uri': instance.uri,
      'poCode': instance.poCode,
      'expectedDate': instance.expectedDate.toIso8601String(),
      'phase': instance.phase,
      'notes': instance.notes,
      'totalPrice': instance.totalPrice,
      'deliver': instance.deliver,
      'status': instance.status,
      'listDetails': instance.listDetails,
    };

_$ListDetailImpl _$$ListDetailImplFromJson(Map<String, dynamic> json) =>
    _$ListDetailImpl(
      materialName: json['materialName'] as String,
      quantity: (json['quantity'] as num).toInt(),
      unit: json['unit'] as String,
      unitPrice: (json['unitPrice'] as num).toInt(),
      subTotal: (json['subTotal'] as num).toInt(),
    );

Map<String, dynamic> _$$ListDetailImplToJson(_$ListDetailImpl instance) =>
    <String, dynamic>{
      'materialName': instance.materialName,
      'quantity': instance.quantity,
      'unit': instance.unit,
      'unitPrice': instance.unitPrice,
      'subTotal': instance.subTotal,
    };
