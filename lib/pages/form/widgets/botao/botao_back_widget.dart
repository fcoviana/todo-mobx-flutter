import 'package:flutter/material.dart';

import '/core/app_colors.dart';
import '/core/app_images.dart';

class BotaoBackWideget extends StatelessWidget {
  BotaoBackWideget();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      child: RaisedButton(
          elevation: 0,
          hoverElevation: 0,
          focusElevation: 0,
          highlightElevation: 0,
          disabledElevation: 0,
          onPressed: () => Navigator.pop(context),
          padding: EdgeInsets.all(15.0),
          highlightColor: AppColors.secondary.withAlpha(100),
          shape: _buildContainerChildShape(),
          color: AppColors.primary,
          child: Container(
            height: 50,
            width: 50,
            child: Image.asset(
              AppImages.arrowLeft,
            ),
          )),
    );
  }

  _buildContainerChildShape() {
    return RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
        side: BorderSide(color: AppColors.grayscaleOffWhite, width: 1.5));
  }
}
