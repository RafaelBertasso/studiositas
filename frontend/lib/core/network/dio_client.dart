import 'package:dio/dio.dart';

class DioClient {
  static Dio get instance {
    return Dio(
      BaseOptions(
        baseUrl: 'http://localhost:5147/api',
        contentType: 'application/json',
      )
    );
  }
}