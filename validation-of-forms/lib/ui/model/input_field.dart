import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:surf_flutter_courses_template/assets/colors.dart';
import 'package:surf_flutter_courses_template/assets/styles.dart';

/// Модель поля ввода


class InputField extends StatelessWidget {
  final FormFieldValidator? validator;
  final String title;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final VoidCallback? onTap;

  const InputField({
    super.key,
    required this.title,
    this.inputFormatters,
    this.validator,
    this.controller,
    this.keyboardType,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextFormField(
        onTap: onTap,
        controller: controller,
        validator: validator,
        keyboardType: keyboardType,
        inputFormatters: inputFormatters,
        // expands: true,
        decoration: InputDecoration(
          labelText: title,
          labelStyle: AppTypography.text16Regular
              .copyWith(color: AppColors.colorGrayText),
          filled: true,
          fillColor: AppColors.colorwhite,
          focusedBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color: AppColors.colorwhite),
            borderRadius: BorderRadius.circular(12),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color: AppColors.colorwhite),
            borderRadius: BorderRadius.circular(12),
          ),
          errorBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color: AppColors.colorwhite),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
