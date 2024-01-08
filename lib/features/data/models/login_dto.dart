import 'package:chaplin_cafe_app/features/domain/entities/login.dart';

class LoginDto extends Login {
  const LoginDto({
    String? mail,
    String? mobileNumber,
    String? password,
    String? companyId,
    String? branchId});

  factory LoginDto.fromJson(Map<String, dynamic> json) {
    return LoginDto(
        mail:json['mail'] ?? '',
        mobileNumber: json['mobileNumber'] ?? '',
        password: json['password'] ?? '',
        companyId: json['companyId'] ?? '',
        branchId: json['branchId'] ?? '');
  }
}
