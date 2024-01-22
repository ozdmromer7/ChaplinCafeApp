
import 'package:chaplin_cafe_app/features/data/models/login_response_dto.dart';
import '../../../../core/resources/resources.dart';

abstract class CafeApiService {

  Future<Resource<LoginResponseDto>?> fetchLogin();
}
