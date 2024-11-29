import 'package:equatable/equatable.dart';

class Register extends Equatable {
  final String? companyId;
  final String? branchId;
  final String? name;
  final String? middleName;
  final String? surname;
  final String? mobileNumber;
  final String? mail;
  final String? birthDate;

  const Register(
      {this.companyId,
      this.branchId,
      this.name,
      this.middleName,
      this.surname,
      this.mobileNumber,
      this.mail,
      this.birthDate});

  @override
  List<Object?> get props {
    return [
      mail,
      mobileNumber,
      name,
      companyId,
      branchId,
      middleName,
      surname,
      birthDate
    ];
  }

  Map<String, dynamic> toJson() {
    return {
      'companyId': companyId,
      'branchId': branchId,
      'name': name,
      'middleName': middleName,
      'surname': surname,
      'mobileNumber': mobileNumber,
      'mail': mail,
      'birtDate': birthDate
    };
  }
}
