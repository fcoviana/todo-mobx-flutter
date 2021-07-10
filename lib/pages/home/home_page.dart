import 'package:flutter/material.dart';
import 'package:tareafas_app/controllers/task_controller.dart';

import '/pages/home/widgets/appbar/app_bar_widget.dart';
import 'widgets/card/card_add_tarefa.dart';
import '/pages/home/widgets/list/card_list_tarefa.dart';

class HomePage extends StatelessWidget {
  TaskController taskController;

  HomePage({required this.taskController});

  @override
  Widget build(BuildContext context) {
    taskController.fetchAll();
    return Scaffold(
      appBar: AppBarWidget(),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 22),
            CardAddTarefa(
              taskController: taskController,
            ),
            SizedBox(height: 16),
            Expanded(child: CardListTarefa(taskController: taskController))
          ],
        ),
      ),
    );
  }
}
