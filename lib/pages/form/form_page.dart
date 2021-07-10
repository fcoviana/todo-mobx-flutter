import 'package:flutter/material.dart';
import 'package:tareafas_app/controllers/task_controller.dart';
import 'package:tareafas_app/models/task.dart';

import '/pages/form/widgets/appbar/app_bar_widget.dart';
import '/shared/widgets/widgets.dart';

class FormPage extends StatelessWidget {
  TextEditingController tituloController = TextEditingController();
  TextEditingController descricaoController = TextEditingController();
  TaskController taskController;
  Task? task;

  String label;

  FormPage({required this.taskController, this.task, required this.label});

  @override
  Widget build(BuildContext context) {
    tituloController.text = task != null ? task!.title : '';
    descricaoController.text = task != null ? task!.description : '';

    return Scaffold(
      appBar: AppBarWidget(titulo: label),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          child: Column(
            children: [
              InputWidget(label: 'Titulo', controller: tituloController),
              SizedBox(height: 32),
              InputWidget(label: 'Descrição', controller: descricaoController)
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ButtonBase(
          height: 56,
          rounded: true,
          label: label,
          onPressed: () {
            onSubmit(context);
          },
        ),
      ),
    );
  }

  onSubmit(context) {
    if (task == null) {
      taskController.create(tituloController.text, descricaoController.text);
    } else {
      Task tarefaToEdit = Task(
          id: task!.id,
          title: tituloController.text,
          description: descricaoController.text);

      // taskController.task = tarefaToEdit;
      taskController.update(tarefaToEdit);
    }
    Navigator.pop(context);
    taskController.fetchAll();
  }
}
