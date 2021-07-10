import 'package:dio/dio.dart';

class ApiClient {
  BaseOptions _options = BaseOptions(
    baseUrl: 'http://192.168.1.5:3000/api',
    connectTimeout: 5000,
    receiveTimeout: 3000,
  );

  BaseOptions get options => _options;

  Dio get apiClient => Dio(options);
}
