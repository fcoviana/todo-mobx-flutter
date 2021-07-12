import 'package:mobx/mobx.dart';
import 'package:tareafas_app/services/task_service.dart';

import '/models/task.dart';

part 'task_controller.g.dart';

class TaskController = TaskControllerBase with _$TaskController;

abstract class TaskControllerBase with Store {
  TaskService taskService = TaskService();

  @observable
  bool isLoading = false;

  @observable
  bool isError = false;

  @observable
  late Task task;

  @observable
  List<Task> tasks = ObservableList<Task>();

  _prepareRequest(fn) async {
    try {
      this.isError = false;
      this.isLoading = true;
      return await fn();
    } catch (error) {
      this.isError = true;
      print(error);
      throw Exception("Error on server");
    } finally {
      this.isLoading = false;
    }
  }

  @action
  Future<void> create(String title, String description) async {
    Task task = Task(title: title, description: description);
    await this.taskService.create(task);
  }

  @action
  Future<Task> fetchById(String id) async {
    return _prepareRequest(() async {
      this.task = await this.taskService.fetchById(id);
      return this.task;
    });
  }

  @action
  Future<void> fetchAll() async {
    _prepareRequest(() async => this.tasks = await this.taskService.fetchAll());
  }

  @action
  Future<void> update(Task task) async {
    await this.taskService.update(task);
  }

  @action
  Future<void> delete(Task task) async {
    await this.taskService.delete(task);
  }
}
