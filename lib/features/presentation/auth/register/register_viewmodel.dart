import 'package:chaplin_cafe_app/core/resources/resources.dart';
import 'package:chaplin_cafe_app/features/data/repository/service_repository_impl.dart';
import 'package:chaplin_cafe_app/features/domain/entities/register.dart';
import 'package:chaplin_cafe_app/features/domain/entities/register_response.dart';
import 'package:chaplin_cafe_app/features/domain/repository/service_repository.dart';
import 'package:chaplin_cafe_app/features/presentation/auth/register/register_state.dart';
import 'package:chaplin_cafe_app/features/data/data_sources/remote/cafe_service_api.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final class RegisterViewModel extends Cubit<RegisterState> {
  RegisterViewModel() : super(const RegisterState(isLoading: false));

  Future<void> register(Register register) async {
    ServiceRepository repository =
        ServiceRepositoryImpl(CafeServiceApi.instance!.dio);

    emit(const RegisterState(isLoading: true));

    try {
      final response = await repository.register(register);
      if (response is Success<RegisterResponse?>?) {
        emit(RegisterState(
            isLoading: false, registerResponse: response?.data, error: ''));
      }
      // ignore: empty_catches
    } catch (e) {}
  }
}
