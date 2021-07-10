import 'package:flutter/material.dart';

import '/core/app_colors.dart';

class TextLabel {
  static Widget build(
      {String? name,
      double? size,
      Color? color,
      TextAlign? textAlign,
      FontWeight? fontWeight}) {
    return Container(
      child: Text(
        name ?? "",
        textAlign: textAlign ?? TextAlign.center,
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        softWrap: true,
        style: TextStyle(
            decoration: TextDecoration.none,
            fontSize: size,
            color: color ?? AppColors.grayscaleTitle,
            fontFamily: 'Poppins',
            fontWeight: fontWeight ?? FontWeight.w400),
      ),
    );
  }
}
