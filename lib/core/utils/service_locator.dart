import 'package:bookly_app/core/utils/Api_service.dart';
import 'package:bookly_app/features/home/data/Repos/Home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

// This file is responsible for setting up the service locator using the GetIt package(singleton pattern).
final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));

  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt<ApiService>()));
}
