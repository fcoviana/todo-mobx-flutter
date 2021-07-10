import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:tareafas_app/controllers/task_controller.dart';

import '/pages/home/widgets/card/card_tarefa_widget.dart';

class CardListTarefa extends StatelessWidget {
  TaskController taskController;
  CardListTarefa({required this.taskController});

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => ListView.builder(
          itemCount: taskController.tasks.length,
          itemBuilder: (_, i) => CardTarefa(
                taskController: taskController,
                task: taskController.tasks[i],
              )),
    );
  }
}
