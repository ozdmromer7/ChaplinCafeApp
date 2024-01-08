import 'dart:ffi';

import 'package:equatable/equatable.dart';

class LoginResponse extends Equatable {
  final String? name;
  final String? middleName;
  final String? surname;
  final Int? customerId;
  final Bool? isSuccess;

  const LoginResponse(
      {this.name,
      this.middleName,
      this.surname,
      this.customerId,
      this.isSuccess});

  @override
  List<Object?> get props {
    return [name, middleName, surname, customerId, isSuccess];
  }
}
