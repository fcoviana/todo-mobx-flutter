// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TaskController on TaskControllerBase, Store {
  final _$isLoadingAtom = Atom(name: 'TaskControllerBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$isErrorAtom = Atom(name: 'TaskControllerBase.isError');

  @override
  bool get isError {
    _$isErrorAtom.reportRead();
    return super.isError;
  }

  @override
  set isError(bool value) {
    _$isErrorAtom.reportWrite(value, super.isError, () {
      super.isError = value;
    });
  }

  final _$taskAtom = Atom(name: 'TaskControllerBase.task');

  @override
  Task get task {
    _$taskAtom.reportRead();
    return super.task;
  }

  @override
  set task(Task value) {
    _$taskAtom.reportWrite(value, super.task, () {
      super.task = value;
    });
  }

  final _$tasksAtom = Atom(name: 'TaskControllerBase.tasks');

  @override
  List<Task> get tasks {
    _$tasksAtom.reportRead();
    return super.tasks;
  }

  @override
  set tasks(List<Task> value) {
    _$tasksAtom.reportWrite(value, super.tasks, () {
      super.tasks = value;
    });
  }

  final _$createAsyncAction = AsyncAction('TaskControllerBase.create');

  @override
  Future<void> create(String title, String description) {
    return _$createAsyncAction.run(() => super.create(title, description));
  }

  final _$fetchByIdAsyncAction = AsyncAction('TaskControllerBase.fetchById');

  @override
  Future<Task> fetchById(String id) {
    return _$fetchByIdAsyncAction.run(() => super.fetchById(id));
  }

  final _$fetchAllAsyncAction = AsyncAction('TaskControllerBase.fetchAll');

  @override
  Future<void> fetchAll() {
    return _$fetchAllAsyncAction.run(() => super.fetchAll());
  }

  final _$updateAsyncAction = AsyncAction('TaskControllerBase.update');

  @override
  Future<void> update(Task task) {
    return _$updateAsyncAction.run(() => super.update(task));
  }

  final _$deleteAsyncAction = AsyncAction('TaskControllerBase.delete');

  @override
  Future<void> delete(Task task) {
    return _$deleteAsyncAction.run(() => super.delete(task));
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
isError: ${isError},
task: ${task},
tasks: ${tasks}
    ''';
  }
}
