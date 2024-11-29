import 'package:equatable/equatable.dart';

class RegisterResponse extends Equatable {
  final String? isSuccess;
  final String? responseMessage;

  const RegisterResponse({this.isSuccess, this.responseMessage});

  @override
  List<Object?> get props {
    return [
      isSuccess,
      responseMessage,
    ];
  }

  factory RegisterResponse.fromJson(Map<String, dynamic> json) {
    return RegisterResponse(
        isSuccess: json['isSuccess'], responseMessage: json['responseMessage']);
  }

  Map<String, dynamic> toJson() {
    return {'isSuccess': isSuccess, 'responseMessage': responseMessage};
  }
}
