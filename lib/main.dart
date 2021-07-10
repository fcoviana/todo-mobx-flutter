import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobx/mobx.dart';

import 'core/core.dart';

void main() {
  // mainContext.spy((event) { 
  //   print('EVENTO: $event');
  // });

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: AppColors.grayscaleTitle,
    statusBarColor:  AppColors.primary,
  ));
  runApp(AppWidget());
}
