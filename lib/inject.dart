import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:news_app/core/api/api_client.dart';
import 'package:news_app/feature/home/data/repository/home_repository_impl.dart';
import 'package:news_app/feature/home/domain/usecase/home_usecase.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<ApiClient>(ApiClient(getIt<Dio>()));
  getIt.registerSingleton<HomeRepositoryImpl>(HomeRepositoryImpl(getIt<ApiClient>()));
  getIt
      .registerSingleton<HomeUsecase>(HomeUsecase(getIt<HomeRepositoryImpl>()));
}
