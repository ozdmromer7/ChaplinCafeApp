import 'package:chaplin_cafe_app/features/domain/entities/branch_response.dart';
import 'package:chaplin_cafe_app/features/domain/entities/register.dart';
import 'package:chaplin_cafe_app/features/domain/entities/register_response.dart';

import '../../../core/resources/resources.dart';
import '../../data/models/login_response_dto.dart';
import '../entities/login.dart';

abstract class ServiceRepository {
  Future<Resource<LoginResponseDto?>?> getLogin(Login login);

  Future<Resource<RegisterResponse?>?> register(Register register);

  Future<Resource<List<BranchResponse?>?>?> getBranches(String companyId);
}
