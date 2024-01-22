import 'package:dio/dio.dart';

sealed class Resource<T> {
  const Resource();
}

class Success<T> extends Resource<T> {
  final T? data;

  const Success({required this.data});
}

class Failure<T> extends Resource<T> {
  final DioException exception;

  const Failure({required this.exception});
}
