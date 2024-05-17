// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDetailImpl _$$UserDetailImplFromJson(Map<String, dynamic> json) =>
    _$UserDetailImpl(
      name: json['name'] as String?,
      userName: json['userName'] as String?,
      gender: json['gender'] as String?,
      phone: json['phone'] as String?,
      address: json['address'] as String?,
      avatar: json['avatar'] as String?,
      status: json['status'] as String?,
      roleId: json['roleId'] as String?,
      id: json['id'] as String?,
      dateCreate: json['dateCreate'] == null
          ? null
          : DateTime.parse(json['dateCreate'] as String),
      dateUpdate: json['dateUpdate'] == null
          ? null
          : DateTime.parse(json['dateUpdate'] as String),
      isDeleted: json['isDeleted'] as bool?,
    );

Map<String, dynamic> _$$UserDetailImplToJson(_$UserDetailImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'userName': instance.userName,
      'gender': instance.gender,
      'phone': instance.phone,
      'address': instance.address,
      'avatar': instance.avatar,
      'status': instance.status,
      'roleId': instance.roleId,
      'id': instance.id,
      'dateCreate': instance.dateCreate?.toIso8601String(),
      'dateUpdate': instance.dateUpdate?.toIso8601String(),
      'isDeleted': instance.isDeleted,
    };
