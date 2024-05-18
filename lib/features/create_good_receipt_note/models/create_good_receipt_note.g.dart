// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_good_receipt_note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateGoodReceiptNoteImpl _$$CreateGoodReceiptNoteImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateGoodReceiptNoteImpl(
      uri: json['uri'] as String?,
      no: json['no'] as String?,
      name: json['name'] as String?,
      poCode: json['poCode'] as String?,
      phase: (json['phase'] as num?)?.toInt(),
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      goodReceipNoteDetails: (json['goodReceipNoteDetails'] as List<dynamic>?)
          ?.map((e) => GoodReceipNoteDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CreateGoodReceiptNoteImplToJson(
        _$CreateGoodReceiptNoteImpl instance) =>
    <String, dynamic>{
      'uri': instance.uri,
      'no': instance.no,
      'name': instance.name,
      'poCode': instance.poCode,
      'phase': instance.phase,
      'date': instance.date?.toIso8601String(),
      'goodReceipNoteDetails': instance.goodReceipNoteDetails,
    };

_$GoodReceipNoteDetailImpl _$$GoodReceipNoteDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$GoodReceipNoteDetailImpl(
      materialName: json['materialName'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
      unit: json['unit'] as String?,
      unitPrice: (json['unitPrice'] as num?)?.toInt(),
      subTotal: (json['subTotal'] as num?)?.toInt(),
      importQuantity: (json['importQuantity'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$GoodReceipNoteDetailImplToJson(
        _$GoodReceipNoteDetailImpl instance) =>
    <String, dynamic>{
      'materialName': instance.materialName,
      'quantity': instance.quantity,
      'unit': instance.unit,
      'unitPrice': instance.unitPrice,
      'subTotal': instance.subTotal,
      'importQuantity': instance.importQuantity,
    };
