import 'package:flutter/material.dart';
import 'package:tareafas_app/pages/form/widgets/botao/botao_back_widget.dart';

import '/shared/widgets/text_label.dart';
import '/core/app_colors.dart';

class AppBarWidget extends PreferredSize {
  String titulo;

  AppBarWidget({required this.titulo})
      : super(
            preferredSize: Size.fromHeight(150),
            child: Container(
              height: 150,
              child: Container(
                  color: AppColors.primary,
                  width: double.maxFinite,
                  child: _buildRow(titulo)),
            ));
}

_buildRow(titulo) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      SizedBox(width: 16),
      BotaoBackWideget(),
      SizedBox(width: 26),
      TextLabel.build(
          name: '$titulo Tarefa',
          fontWeight: FontWeight.w700,
          size: 25,
          color: AppColors.grayscaleOffWhite),
    ],
  );
}
