import 'package:chaplin_cafe_app/core/resources/resources.dart';
import 'package:chaplin_cafe_app/features/data/data_sources/remote/cafe_api_service.dart';
import 'package:chaplin_cafe_app/features/data/models/login_response_dto.dart';
import 'package:chaplin_cafe_app/features/domain/entities/login.dart';
import 'package:chaplin_cafe_app/features/domain/entities/login_response.dart';
import 'package:chaplin_cafe_app/features/domain/repository/login_repository.dart';

class LoginRepositoryImpl extends LoginRepository {
  late CafeApiService apiService ;

  @override
  Future<Resource<LoginResponse>> getLogin(Login login) {

    throw UnimplementedError();
  }




}