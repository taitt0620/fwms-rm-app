// To parse this JSON data, do
//
//     final updateUser = updateUserFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'update_user.freezed.dart';
part 'update_user.g.dart';

UpdateUser updateUserFromJson(String str) => UpdateUser.fromJson(json.decode(str));

String updateUserToJson(UpdateUser data) => json.encode(data.toJson());

@freezed
class UpdateUser with _$UpdateUser {
    const factory UpdateUser({
        @JsonKey(name: "name")
        String? name,
        @JsonKey(name: "userName")
        String? userName,
        @JsonKey(name: "gender")
        int? gender,
        @JsonKey(name: "phone")
        String? phone,
        @JsonKey(name: "address")
        String? address,
    }) = _UpdateUser;

    factory UpdateUser.fromJson(Map<String, dynamic> json) => _$UpdateUserFromJson(json);
}
