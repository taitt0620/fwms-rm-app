// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'user.freezed.dart';
part 'user.g.dart';

List<User> userFromJson(String str) =>
    List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

String userToJson(List<User> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class User with _$User {
  const factory User({
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "userName") String? userName,
    @JsonKey(name: "gender") String? gender,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "roleId") String? roleId,
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "dateCreate") DateTime? dateCreate,
    @JsonKey(name: "dateUpdate") DateTime? dateUpdate,
    @JsonKey(name: "isDeleted") bool? isDeleted,
    @JsonKey(name: "phone") String? phone,
    @JsonKey(name: "address") String? address,
    @JsonKey(name: "avatar") String? avatar,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
