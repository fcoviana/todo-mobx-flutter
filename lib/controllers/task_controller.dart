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
  late Task task;

  @observable
  List<Task> tasks = ObservableList<Task>();

  @action
  Future<void> create(String title, String description) async {
    Task task = Task(title: title, description: description);
    await this.taskService.create(task);
  }

  @action
  Future<Task> fetchById(String id) async {
    this.isLoading = true;
    this.task = await this.taskService.fetchById(id);
    this.isLoading = false;
    return this.task;
  }

  @action
  Future<void> fetchAll() async {
    this.isLoading = true;
    this.tasks = await this.taskService.fetchAll();
    this.isLoading = false;
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
