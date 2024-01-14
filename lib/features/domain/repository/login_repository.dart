
import '../../../core/resources/resources.dart';
import '../entities/login.dart';
import '../entities/login_response.dart';

abstract class LoginRepository {

  Future<Resource<LoginResponse>> getLogin(Login login);
}