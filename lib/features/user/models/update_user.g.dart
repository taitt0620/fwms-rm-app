// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateUserImpl _$$UpdateUserImplFromJson(Map<String, dynamic> json) =>
    _$UpdateUserImpl(
      name: json['name'] as String?,
      userName: json['userName'] as String?,
      gender: (json['gender'] as num?)?.toInt(),
      phone: json['phone'] as String?,
      address: json['address'] as String?,
    );

Map<String, dynamic> _$$UpdateUserImplToJson(_$UpdateUserImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'userName': instance.userName,
      'gender': instance.gender,
      'phone': instance.phone,
      'address': instance.address,
    };
