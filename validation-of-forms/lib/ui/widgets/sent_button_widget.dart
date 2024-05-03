import 'package:flutter/material.dart';
import 'package:surf_flutter_courses_template/assets/styles.dart';

class SentButtonWidget extends StatelessWidget {
  final void Function() onPressed;
  final bool loading;
  const SentButtonWidget({
    super.key,
    required this.onPressed,
    required this.loading,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: loading ? AppColors.colorGray : AppColors.colorPink,
          borderRadius: BorderRadius.circular(12),
        ),
        child: TextButton(
          onPressed: onPressed,
          child: loading
              ? const CircularProgressIndicator()
              : Text(
                  AppStrings.buttonSend,
                  style: AppTypography.text18Bold.copyWith(
                    color: AppColors.colorwhite,
                  ),
                ),
        ),
      ),
    );
  }
}
