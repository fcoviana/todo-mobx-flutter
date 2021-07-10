import 'package:flutter/material.dart';

import '/core/app_colors.dart';

class InputWidget extends StatelessWidget {
  String label;
  TextEditingController controller;

  InputWidget({required this.label, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: 64,
        width: double.infinity,
        padding: EdgeInsets.only(left: 20),
        decoration: _buildBoxDecoration(),
        child: _buildTextField());
  }

  _buildBoxDecoration() {
    return BoxDecoration(
      color: AppColors.grayscaleInputBackground,
      borderRadius: BorderRadius.circular(12),
    );
  }

  _buildTextField() {
    return TextField(
        controller: controller,
        style: TextStyle(color: AppColors.grayscaleTitle),
        decoration: _buildTextFieldDecoration());
  }

  _buildTextFieldDecoration() {
    return InputDecoration(
      enabledBorder: InputBorder.none,
      focusedBorder: InputBorder.none,
      suffixIconConstraints: BoxConstraints(minHeight: 24, minWidth: 20),
      hintText: label,
      hintStyle: TextStyle(color: AppColors.grayscalePlaceholder),
    );
  }
}
