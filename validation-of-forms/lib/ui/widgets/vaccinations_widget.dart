import 'package:flutter/material.dart';
import 'package:surf_flutter_courses_template/assets/styles.dart';
import 'package:surf_flutter_courses_template/ui/model/vaccinations_model.dart';
/// виджет вакцинации
class VaccinationsWidget extends StatelessWidget {
  final TextEditingController? controllerTextField;

  const VaccinationsWidget({super.key, this.controllerTextField});

  final bool isCheckedRabies = false;

  final bool isCheckedCovid = false;

  final bool isCheckedMalaria = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, bottom: 16),
          child: Text(
            AppStrings.vaccinations,
            style: AppTypography.text24Bold.copyWith(color: AppColors.colorBly),
          ),
        ),
        VaccinationsModel(
          controller: controllerTextField,
          isChecked: isCheckedRabies,
          titile: AppStrings.rabies,
        ),
        VaccinationsModel(
          controller: controllerTextField,
          isChecked: isCheckedCovid,
          titile: AppStrings.covid,
        ),
        VaccinationsModel(
          controller: controllerTextField,
          isChecked: isCheckedMalaria,
          titile: AppStrings.malaria,
        ),
      ],
    );
  }
}
