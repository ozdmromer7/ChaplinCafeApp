import 'package:chaplin_cafe_app/core/resources/resources.dart';
import 'package:chaplin_cafe_app/features/data/models/login_response_dto.dart';
import 'package:chaplin_cafe_app/features/domain/repository/login_repository.dart';

class LoginRepositoryImpl extends LoginRepository {
  @override
  Future<Resource<LoginResponseDto>> getLogin() {
    throw UnimplementedError();
  }


}