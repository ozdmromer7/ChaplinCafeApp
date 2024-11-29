import 'dart:io';
import 'package:chaplin_cafe_app/core/constant/constant.dart';
import 'package:dio/dio.dart';

class CafeServiceApi {
  static CafeServiceApi? _instance;

  static CafeServiceApi? get instance {
    if (_instance != null) {
      return _instance;
    } else {
      _instance = CafeServiceApi.init();
      return _instance;
    }
  }

  late final Dio dio;
  final String BASE_URL = 'https://cafeapi.site/';
  final Duration duration_20S = Duration(milliseconds: 20000);

  CafeServiceApi.init() {
    dio = Dio(BaseOptions(
        baseUrl: BASE_URL,
        connectTimeout: duration_20S,
        receiveTimeout: duration_20S));
    dio.options.headers['content-Type'] = 'application/json';
    dio.options.headers['Authorization'] = 'accessToken';
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          options.headers['Authorization'] = 'Bearer ';
          options.headers["Accept"] = "application/json";
          options.headers["content-type"] = "application/json";
          options.headers["X-Api-Key"] = API_KEY;
          return handler.next(options);
        },
        onError: (error, handler) async {
          if (error.response?.statusCode == HttpStatus.unauthorized) {
            return handler.resolve(await dio.fetch(error.requestOptions));
          }
          return handler.next(error);
        },
      ),
    );
  }
}
