import 'package:chaplin_cafe_app/features/domain/repository/login_repository.dart';
import '../../../../core/resources/resources.dart';
import '../../entities/login.dart';
import '../../entities/login_response.dart';

class LoginUseCase {
  final LoginRepository _loginRepository;

  LoginUseCase(this._loginRepository);

  Future<Resource<LoginResponse?>> fetchLogin(Login login)  {
    return _loginRepository.getLogin(login);
  }
}
