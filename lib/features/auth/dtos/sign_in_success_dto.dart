class SignInSuccessDto {
  final String tokenString;

  const SignInSuccessDto({
    required this.tokenString,
  });

  factory SignInSuccessDto.fromJson(Map<String, dynamic> json) {
    return SignInSuccessDto(
      tokenString: json['tokenString'].toString(),
    );
  }
}
