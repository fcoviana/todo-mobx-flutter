import 'package:flutter/material.dart';

import '/core/app_colors.dart';
import '/core/app_images.dart';

class BotaoAddTarefa extends StatelessWidget {
  BotaoAddTarefa();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: AppColors.primary.withOpacity(0.5),
            ),
            height: 70,
            width: 70,
          ),
        ),
        Positioned(
          right: 160,
          top: 8,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: AppColors.primary,
            ),
            height: 55,
            width: 55,
          ),
        ),
        Positioned(
          right: 175,
          top: 22,
          child: Container(
            height: 25,
            width: 25,
            child: Image.asset(
              AppImages.plus,
              height: 0,
              width: 0,
            ),
          ),
        ),
      ],
    );
  }
}
