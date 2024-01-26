import 'dart:io';

import 'package:chaplin_cafe_app/core/enum/uri_end_points.dart';
import 'package:chaplin_cafe_app/features/domain/entities/login.dart';
import 'package:chaplin_cafe_app/features/domain/repository/login_repository.dart';
import 'package:dio/dio.dart';
import '../../../core/resources/resources.dart';
import '../models/login_response_dto.dart';

class LoginRepositoryImpl implements LoginRepository {
  LoginRepositoryImpl(this._dio);

  final Dio _dio;

  @override
  Future<Resource<LoginResponseDto?>> getLogin(Login login) async {
    final response = await _dio.get(UriEndPoints.login.endPoint, data: login);

    try {
      if (response.statusCode == HttpStatus.ok) {
        var loginResponseDto = LoginResponseDto.fromJson(response.data);
        return Success(data: loginResponseDto);
      } else {
        return Failure(
            exception: DioException(
                error: response.statusMessage,
                response: response,
                type: DioExceptionType.badResponse,
                requestOptions: response.requestOptions));
      }
    } on DioException catch (e) {
      return Failure(exception: e);
    }
  }
}
