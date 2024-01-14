import 'package:chaplin_cafe_app/features/domain/entities/login.dart';

class LoginDto extends Login {
  const LoginDto(
      {String? mail,
      String? mobileNumber,
      String? password,
      String? companyId,
      String? branchId});

  LoginDto copyWith(
      {String? mail,
      String? mobileNumber,
      String? password,
      String? companyId,
      String? branchId}) {
    return LoginDto(
        mail: mail ?? this.mail,
        mobileNumber: mobileNumber ?? this.mobileNumber,
        password: password ?? this.password,
        companyId: companyId ?? this.companyId,
        branchId: branchId ?? this.branchId);
  }

  factory LoginDto.fromJson(Map<String, dynamic> json) {
    return LoginDto(
        mail: json['mail'] ?? '',
        mobileNumber: json['mobileNumber'] ?? '',
        password: json['password'] ?? '',
        companyId: json['companyId'] ?? '',
        branchId: json['branchId'] ?? '');
  }
}
