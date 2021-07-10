import 'package:flutter/material.dart';
import 'package:tareafas_app/controllers/task_controller.dart';
import 'package:tareafas_app/models/task.dart';

import '/core/app_colors.dart';
import '/core/app_images.dart';
import '/pages/form/form_page.dart';
import '/shared/widgets/text_label.dart';

class CardTarefa extends StatelessWidget {
  TaskController taskController;
  Task task;

  CardTarefa({required this.task, required this.taskController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        height: 180,
        width: 378,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.grayscaleGhostBorder),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                    backgroundColor: AppColors.blue.withOpacity(0.2),
                    child: TextLabel.build(
                        name: "T",
                        size: 16,
                        color: AppColors.blue,
                        fontWeight: FontWeight.w600)),
                SizedBox(width: 10),
                TextLabel.build(
                    name: "${task.title}",
                    size: 14,
                    color: AppColors.grayscaleTitle,
                    fontWeight: FontWeight.w600)
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: TextLabel.build(
                      name: "${task.description}",
                      size: 14,
                      textAlign: TextAlign.justify,
                      color: AppColors.grayscaleTitle,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            SizedBox(height: 16),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FormPage(
                                  taskController: taskController,
                                  task: task,
                                  label: 'Atualizar',
                                )));
                  },
                  child: Image.asset(AppImages.edit, width: 25, height: 25),
                ),
                SizedBox(width: 25),
                InkWell(
                  onTap: () => {
                    // this.taskController.task = this.task,
                    this.taskController.delete(task),
                    this.taskController.fetchAll()
                  },
                  child: Image.asset(AppImages.delte, width: 25, height: 25),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
