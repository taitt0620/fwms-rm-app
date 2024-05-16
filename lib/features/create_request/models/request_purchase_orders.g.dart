// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_purchase_orders.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestPurchaseOrdersImpl _$$RequestPurchaseOrdersImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestPurchaseOrdersImpl(
      uri: json['uri'],
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
      purchaseOrderPhases: (json['purchaseOrderPhases'] as List<dynamic>)
          .map((e) => PurchaseOrderPhase.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RequestPurchaseOrdersImplToJson(
        _$RequestPurchaseOrdersImpl instance) =>
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
      'purchaseOrderPhases': instance.purchaseOrderPhases,
    };

_$PurchaseOrderPhaseImpl _$$PurchaseOrderPhaseImplFromJson(
        Map<String, dynamic> json) =>
    _$PurchaseOrderPhaseImpl(
      uri: json['uri'],
      expectedDate: DateTime.parse(json['expectedDate'] as String),
      phase: (json['phase'] as num).toInt(),
      notes: json['notes'] as String,
      totalPrice: (json['totalPrice'] as num).toInt(),
      deliver: json['deliver'] as String,
      status: json['status'] as String,
      purchaseOrderId: json['purchaseOrderId'] as String,
      id: json['id'] as String,
      dateCreate: DateTime.parse(json['dateCreate'] as String),
      dateUpdate: DateTime.parse(json['dateUpdate'] as String),
      isDeleted: json['isDeleted'] as bool,
    );

Map<String, dynamic> _$$PurchaseOrderPhaseImplToJson(
        _$PurchaseOrderPhaseImpl instance) =>
    <String, dynamic>{
      'uri': instance.uri,
      'expectedDate': instance.expectedDate.toIso8601String(),
      'phase': instance.phase,
      'notes': instance.notes,
      'totalPrice': instance.totalPrice,
      'deliver': instance.deliver,
      'status': instance.status,
      'purchaseOrderId': instance.purchaseOrderId,
      'id': instance.id,
      'dateCreate': instance.dateCreate.toIso8601String(),
      'dateUpdate': instance.dateUpdate.toIso8601String(),
      'isDeleted': instance.isDeleted,
    };
