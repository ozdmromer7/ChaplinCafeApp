import 'package:chaplin_cafe_app/features/domain/entities/login_response.dart';

class LoginResponseDto extends LoginResponse {
  const LoginResponseDto(
      {String? name,
      String? middleName,
      String? surname,
      int? customerId,
      bool? isSuccess})
      : super(
            name: name,
            middleName: middleName,
            surname: surname,
            customerId: customerId,
            isSuccess: isSuccess);

  factory LoginResponseDto.fromJson(Map<String, dynamic> json) {
    return LoginResponseDto(
        name: json['name'],
        middleName: json['middleName'],
        surname: json['surname'],
        customerId: json['customerId'],
        isSuccess: json['isSuccess']);
  }
}

extension ToLoginResponse on LoginResponseDto {
  LoginResponse? toLoginResponse() {
    return LoginResponse(
        name: name,
        middleName: middleName,
        surname: surname,
        customerId: customerId,
        isSuccess: isSuccess);
  }
}
