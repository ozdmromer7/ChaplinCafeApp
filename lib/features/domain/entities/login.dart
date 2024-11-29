import 'package:equatable/equatable.dart';

class Login extends Equatable {
  final String? mail;
  final String? mobileNumber;
  final String? password;
  final String? companyId;
  final String? branchId;

  const Login(
      {this.mail,
      this.mobileNumber,
      this.password,
      this.companyId,
      this.branchId});

  @override
  List<Object?> get props {
    return [mail, mobileNumber, password, companyId, branchId];
  }

  Map<String, dynamic> toJson() {
    return {
      'mail': mail,
      'mobileNumber': mobileNumber,
      'password': password,
      'companyId': companyId,
      'branchId': branchId,
    };
  }
}
