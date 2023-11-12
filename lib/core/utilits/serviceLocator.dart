import 'package:bookly_app/core/utilits/api_service.dart';
import 'package:bookly_app/features/Home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;
void setup() {
  getit.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      apiService: ApiService(
        Dio(),
      ),
    ),
  );
}
