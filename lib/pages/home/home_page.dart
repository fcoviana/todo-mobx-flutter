import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:tareafas_app/controllers/task_controller.dart';
import 'package:tareafas_app/core/app_colors.dart';
import 'package:tareafas_app/shared/widgets/text_label.dart';

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
            _buildList()
          ],
        ),
      ),
    );
  }

  _buildList() {
    return Observer(builder: (BuildContext context) {
      if (taskController.isLoading) {
        return Padding(
          padding: const EdgeInsets.all(80),
          child: CircularProgressIndicator(
              strokeWidth: 2, color: AppColors.secondary),
        );
      } else if (taskController.isError) {
        return Padding(
          padding: const EdgeInsets.all(80),
          child: Column(
            children: [
              TextLabel.build(
                  color: AppColors.grayscaleTitle,
                  name: 'Erro no Servidor',
                  size: 16,
                  fontWeight: FontWeight.w600),
              ElevatedButton(
                onPressed: () => taskController.fetchAll(),
                style: ElevatedButton.styleFrom(primary: AppColors.primary),
                child: Text('Tentar novamente'),
              )
            ],
          ),
        );
      } else {
        return Expanded(child: CardListTarefa(taskController: taskController));
      }
    });
  }
}
