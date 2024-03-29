// To parse this JSON data, do
//
//     final signInSuccessDto = signInSuccessDtoFromJson(jsonString);

import 'dart:convert';

SignInSuccessDto signInSuccessDtoFromJson(String str) =>
    SignInSuccessDto.fromJson(json.decode(str));

String signInSuccessDtoToJson(SignInSuccessDto data) =>
    json.encode(data.toJson());

class SignInSuccessDto {
  String statusCode;
  String messagae;
  Data data;

  SignInSuccessDto({
    required this.statusCode,
    required this.messagae,
    required this.data,
  });

  factory SignInSuccessDto.fromJson(Map<String, dynamic> json) =>
      SignInSuccessDto(
        statusCode: json["statusCode"],
        messagae: json["messagae"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "messagae": messagae,
        "data": data.toJson(),
      };
}

class Data {
  String tokenString;
  String id;
  String name;
  String role;
  int expiresInMilliseconds;

  Data({
    required this.tokenString,
    required this.id,
    required this.name,
    required this.role,
    required this.expiresInMilliseconds,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        tokenString: json["tokenString"]?.toString() ?? "",
        id: json["id"],
        name: json["name"],
        role: json["role"],
        expiresInMilliseconds: json["expiresInMilliseconds"],
      );

  Map<String, dynamic> toJson() => {
        "tokenString": tokenString,
        "id": id,
        "name": name,
        "role": role,
        "expiresInMilliseconds": expiresInMilliseconds,
      };
}
