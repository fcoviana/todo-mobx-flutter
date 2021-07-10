import 'package:flutter/material.dart';
import 'package:tareafas_app/controllers/task_controller.dart';

import '/core/app_colors.dart';
import '../pages/home/home_page.dart';

class AppWidget extends StatelessWidget {
  TaskController taskController = TaskController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Tarefas CRUD",
        theme: _buildTheme(context),
        home: HomePage(
          taskController: taskController,
        ));
  }

  ThemeData _buildTheme(BuildContext context) {
    return ThemeData(
        primaryColor: AppColors.primary,
        accentIconTheme: Theme.of(context)
            .accentIconTheme
            .copyWith(color: AppColors.grayscaleOffWhite),
        primaryIconTheme: Theme.of(context)
            .primaryIconTheme
            .copyWith(color: AppColors.grayscaleOffWhite),
        primaryTextTheme: Theme.of(context)
            .primaryTextTheme
            .apply(bodyColor: AppColors.grayscaleOffWhite),
        backgroundColor: AppColors.grayscaleBackground,
        accentColor: AppColors.secondary,
        hintColor: AppColors.secondary,
        errorColor: AppColors.danger,
        fontFamily: 'Poppins');
  }
}
