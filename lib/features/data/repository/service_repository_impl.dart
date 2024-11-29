import 'dart:convert';
import 'dart:io';

import 'package:chaplin_cafe_app/core/enum/uri_end_points.dart';
import 'package:chaplin_cafe_app/features/domain/entities/branch_response.dart';
import 'package:chaplin_cafe_app/features/domain/entities/login.dart';
import 'package:chaplin_cafe_app/features/domain/entities/register.dart';
import 'package:chaplin_cafe_app/features/domain/entities/register_response.dart';
import 'package:chaplin_cafe_app/features/domain/repository/service_repository.dart';
import 'package:dio/dio.dart';
import '../../../core/resources/resources.dart';
import '../models/login_response_dto.dart';

class ServiceRepositoryImpl implements ServiceRepository {
  ServiceRepositoryImpl(this._dio);

  final Dio _dio;

  @override
  Future<Resource<LoginResponseDto?>?> getLogin(Login login) async {
    try {
      final response =
          await _dio.post(UriEndPoints.login.endPoint, data: login.toJson());

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
    } catch (e) {
      return null;
    }
  }

  @override
  Future<Resource<RegisterResponse?>?> register(Register register) async {
    try {
      final response =
          await _dio.post(UriEndPoints.login.endPoint, data: register.toJson());

      if (response.statusCode == HttpStatus.ok) {
        var registerResponse = RegisterResponse.fromJson(response.data);
        return Success(data: registerResponse);
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
    } catch (e) {
      return null;
    }
  }

  @override
  Future<Resource<List<BranchResponse?>?>?> getBranches(
      String companyId) async {
    try {
      final response = await _dio.post(UriEndPoints.branches.endPoint,
          data: jsonEncode(companyId));

      if (response.statusCode == HttpStatus.ok) {
        var branchResponse = BranchResponse.fromJsonList(response.data);
        return Success(data: branchResponse);
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
    } catch (e) {
      return null;
    }
  }
}
