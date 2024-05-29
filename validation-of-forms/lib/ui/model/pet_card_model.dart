import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:surf_flutter_courses_template/assets/colors.dart';
import 'package:surf_flutter_courses_template/assets/styles.dart';

/// Модель карточки питомца

class PetCardModel extends StatelessWidget {
  final String title;
  final String icon;
  final bool active;
  final VoidCallback? onTap;

  const PetCardModel({
    super.key,
    required this.title,
    required this.icon,
    required this.active,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: SizedBox(
            width: 72,
            height: 72,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: active ? AppColors.colorPink : AppColors.colorwhite,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                  child: SvgPicture.asset(
                icon,
                // ignore: deprecated_member_use
                color: active ? AppColors.colorwhite : AppColors.colorBly,
              )),
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          title,
          style:
              AppTypography.text12Regular.copyWith(color: AppColors.colorBly),
        ),
      ],
    );
  }
}
