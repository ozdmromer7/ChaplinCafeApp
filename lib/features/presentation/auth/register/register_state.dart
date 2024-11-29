import 'package:chaplin_cafe_app/features/domain/entities/register_response.dart';
import 'package:equatable/equatable.dart';

class RegisterState extends Equatable {
  const RegisterState(
      {required this.isLoading, this.registerResponse, this.error});
  final bool isLoading;
  final RegisterResponse? registerResponse;
  final String? error;

  @override
  List<Object?> get props => [isLoading, registerResponse, error];
}
