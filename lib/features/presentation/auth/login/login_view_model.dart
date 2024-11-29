import 'package:bloc/bloc.dart';
import 'package:chaplin_cafe_app/core/resources/resources.dart';
import 'package:chaplin_cafe_app/features/data/models/login_response_dto.dart';
import 'package:chaplin_cafe_app/features/data/repository/service_repository_impl.dart';
import 'package:chaplin_cafe_app/features/domain/entities/login.dart';
import 'package:chaplin_cafe_app/features/domain/repository/service_repository.dart';
import 'package:chaplin_cafe_app/features/data/data_sources/remote/cafe_service_api.dart';

import 'login_state.dart';

final class LoginViewModel extends Cubit<LoginState> {
  LoginViewModel() : super(const LoginState(isLoading: false));

  Future<void> getLogin(Login login) async {
    ServiceRepository repository =
        ServiceRepositoryImpl(CafeServiceApi.instance!.dio);

    emit(const LoginState(isLoading: true));

    try {
      final response = await repository.getLogin(login);
      if (response is Success<LoginResponseDto?>?) {
        emit(LoginState(
            isLoading: false, loginModelResponse: response?.data, error: ''));
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
