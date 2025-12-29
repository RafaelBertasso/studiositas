import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:studiositas/core/network/dio_client.dart';
import 'package:studiositas/features/auth/data/auth_service.dart';
import 'package:studiositas/features/feed/data/post_service.dart';
import 'package:studiositas/features/feed/presentation/cubit/feed_cubit.dart';

final getIt = GetIt.instance;

void setupInjection() {
  getIt.registerLazySingleton<Dio>(() => DioClient.instance);
  getIt.registerLazySingleton<PostService>(() => PostService(getIt<Dio>()));
  getIt.registerFactory(() => FeedCubit(getIt<PostService>()));
  getIt.registerLazySingleton<AuthService>(() => AuthService(getIt<Dio>()));
}
