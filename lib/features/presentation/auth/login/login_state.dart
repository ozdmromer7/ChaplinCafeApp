import 'package:chaplin_cafe_app/features/data/models/login_response_dto.dart';
import 'package:equatable/equatable.dart';

class LoginState extends Equatable {
  const LoginState(
      {required this.isLoading, this.loginModelResponse, this.error});
  final bool isLoading;
  final LoginResponseDto? loginModelResponse;
  final String? error;

  @override
  List<Object?> get props => [isLoading, loginModelResponse, error];
}
