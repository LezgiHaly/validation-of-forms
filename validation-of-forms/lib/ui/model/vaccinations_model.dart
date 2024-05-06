import 'package:flutter/material.dart';
import 'package:surf_flutter_courses_template/assets/styles.dart';
import 'package:surf_flutter_courses_template/domain/models/validators.dart';
import 'package:surf_flutter_courses_template/ui/model/input_field.dart';

/// модель полей вакцинирования


class VaccinationsModel extends StatefulWidget {
  /// не могу понять как исправить эту ошибку
  bool isChecked = false;
  final TextEditingController? controller;

  final String titile;
  VaccinationsModel({
    super.key,
    required this.isChecked,
    required this.titile,
    this.controller,
  });

  @override
  State<VaccinationsModel> createState() => _VaccinationsModelState();
}

class _VaccinationsModelState extends State<VaccinationsModel> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Checkbox(
              activeColor: AppColors.colorPink,
              value: widget.isChecked,
              onChanged: (bool? value) {
                setState(() {
                  widget.isChecked = value!;
                });
              },
            ),
            Text(
              widget.titile,
              style: AppTypography.text16Regular
                  .copyWith(color: AppColors.colorBly),
            ),
          ],
        ),
        Visibility(
          visible: widget.isChecked == true,
          child: InputField(
            controller: widget.controller,
            title: AppStrings.dateVaccinations,
            validator: dateValidate,
            keyboardType: TextInputType.datetime,
          ),
        )
      ],
    );
  }
}
