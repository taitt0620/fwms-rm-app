// To parse this JSON data, do
//
//     final userDetail = userDetailFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'user_detail.freezed.dart';
part 'user_detail.g.dart';

UserDetail userDetailFromJson(String str) =>
    UserDetail.fromJson(json.decode(str));

String userDetailToJson(UserDetail data) => json.encode(data.toJson());

@freezed
class UserDetail with _$UserDetail {
  const factory UserDetail({
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "userName") String? userName,
    @JsonKey(name: "gender") String? gender,
    @JsonKey(name: "phone") String? phone,
    @JsonKey(name: "address") String? address,
    @JsonKey(name: "avatar") String? avatar,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "roleId") String? roleId,
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "dateCreate") DateTime? dateCreate,
    @JsonKey(name: "dateUpdate") DateTime? dateUpdate,
    @JsonKey(name: "isDeleted") bool? isDeleted,
  }) = _UserDetail;

  factory UserDetail.fromJson(Map<String, dynamic> json) =>
      _$UserDetailFromJson(json);
}
