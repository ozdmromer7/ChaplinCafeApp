import '../../../core/resources/resources.dart';
import '../../data/models/login_response_dto.dart';
import '../entities/login.dart';

abstract class LoginRepository {

  Future<Resource<LoginResponseDto?>> getLogin(Login login);
}