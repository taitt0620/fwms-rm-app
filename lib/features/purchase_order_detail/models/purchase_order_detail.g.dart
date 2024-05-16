// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_order_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PurchaseOrderDetailImpl _$$PurchaseOrderDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$PurchaseOrderDetailImpl(
      id: json['id'] as String,
      poCode: json['poCode'] as String,
      supplier: json['supplier'] as String,
      licensePlate: json['licensePlate'] as String,
      date: DateTime.parse(json['date'] as String),
      totalPhase: (json['totalPhase'] as num).toInt(),
      address: json['address'] as String,
      fax: json['fax'] as String,
      notes: json['notes'] as String,
      totalPrice: (json['totalPrice'] as num).toInt(),
      staffName: json['staffName'] as String,
      status: json['status'] as String,
      listDetails: (json['listDetails'] as List<dynamic>)
          .map((e) => ListDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PurchaseOrderDetailImplToJson(
        _$PurchaseOrderDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'poCode': instance.poCode,
      'supplier': instance.supplier,
      'licensePlate': instance.licensePlate,
      'date': instance.date.toIso8601String(),
      'totalPhase': instance.totalPhase,
      'address': instance.address,
      'fax': instance.fax,
      'notes': instance.notes,
      'totalPrice': instance.totalPrice,
      'staffName': instance.staffName,
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
