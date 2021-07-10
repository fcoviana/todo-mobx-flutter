import 'package:dio/dio.dart';

import '../shared/api_client.dart';

class BaseApiService {
  ApiClient _api = ApiClient();

  Dio get api => _api.apiClient;
}
