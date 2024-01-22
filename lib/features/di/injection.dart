import 'package:chaplin_cafe_app/features/data/repository/login_repository_impl.dart';
import 'package:chaplin_cafe_app/features/domain/repository/login_repository.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../core/constant/constant.dart';

final s1 = GetIt.instance;

Future<void> initializeDependencies() async{

  s1.registerSingleton<Dio>(Dio(BaseOptions(baseUrl:baseURL)));

  s1.registerSingleton<LoginRepository>(
    LoginRepositoryImpl(s1())
  );
}