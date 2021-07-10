import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:tareafas_app/models/task.dart';

import '/services/base_api_service.dart';

class TaskService extends BaseApiService {
  Future<dynamic> create(Task task) async {
    try {
      Response response = await api.post('/tasks', data: task.toJson());

      return response;
    } on DioError catch (error) {
      print('Erro ai realizar post ${error.response!.statusCode}');
    }
  }

  Future<Task> fetchById(String id) async {
    Response response = await api.get('/tasks/$id');

    Task task = Task.fromJson(response.data);

    return task;
  }

  Future<List<Task>> fetchAll() async {
    Response response = await api.get('/tasks');

    var tasks = (response.data['body'] as List)
        .map((task) => Task.fromJson(task))
        .toList();

    return tasks;
  }

  Future<dynamic> update(Task task) async {
    try {
      Response response =
          await api.put('/tasks/${task.id}', data: task.toJson());

      return response;
    } on DioError catch (error) {
      print('Erro ai realizar put ${error.response!.statusCode}');
    }
  }

  Future<dynamic> delete(Task task) async {
    try {
      Response response =
          await api.delete('/tasks/${task.id}', data: task.toJson());

      return response;
    } on DioError catch (error) {
      print('Erro ai realizar put ${error.response!.statusCode}');
    }
  }
}
