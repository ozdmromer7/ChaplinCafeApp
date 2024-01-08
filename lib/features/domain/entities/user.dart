import 'package:equatable/equatable.dart';

class User extends Equatable{
  final String companyId;
  final String branchId;
  final String name;
  final String middleName;
  final String surname;
  final String mobileNumber;
  final String mail;
  final String password;
  final String birthDate;

  const User(
      this.companyId,
      this.branchId,
      this.name,
      this.middleName,
      this.surname,
      this.mobileNumber,
      this.mail,
      this.password,
      this.birthDate);

  @override
  List<Object?> get props {
    return [
      companyId,
      branchId,
      name,
      middleName,
      surname,
      mobileNumber,
      mail,
      password,
      birthDate
    ];
  }
}